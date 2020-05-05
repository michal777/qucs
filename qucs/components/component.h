/***************************************************************************
                               component.h
                              -------------
    begin                : Sat Aug 23 2003
    copyright            : (C) 2003 by Michael Margraf
    email                : michael.margraf@alumni.tu-berlin.de
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 3 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#ifndef QUCS_COMPONENT_H
#define QUCS_COMPONENT_H

#include "../symbol.h" // FIXME
#include "../qt_compat.h" // FIXME

class SchematicModel;
class Schematic;
class ViewPainter;
class QString;
class QPen;
class ComponentDialog;

class QTextStream; // BUG

class Component : public Symbol {
protected:
  Component(Component const&);

public: //??!
  Component();

  virtual ~Component() {};
  QString getNetlist() const; // BUG. use netlister to create netlist
  QString get_VHDL_Code(int);
  QString get_Verilog_Code(int);

private: // Element override
  void    paint(ViewPainter*) const;
  void editElement(QucsDoc*);

private: // Symbol interface.
  virtual void recreate() {}; // obsolete?

protected: // wrap legacy. don't use in new code.
  void recreate(int i){
	  assert(i==0);
	  return recreate();
  }

public: // legacy stuff. don't use/
  virtual Component* newOne() = 0; // legacy interfase. use clone.
  virtual void tAC(QTextStream&, SchematicModel const*, QStringList&, int&, int, NetLang const&){
	  unreachable();
  }

public: // Element interface, private?!
  Element* clone() const{
	  Component const* e=this;
	  Component* E=const_cast<Component*>(e);
	  return E->newOne();
  }

  virtual unsigned portCount() const{ return Ports.count(); }
private: // symbol interface
  Port& port(unsigned i) {
	  assert(i<unsigned(Ports.count()));
	  return *Ports[i]; 
  }
  //virtual Port const* portValue(unsigned i) const { return Ports[i]; } ... ?

//  void setPort(unsigned i, Node* n){
//	  assert(i<unsigned(Ports.count()));
//	  Ports[i]->connect(n);
//  }

  virtual unsigned paramCount() const;
  virtual std::string paramValue(unsigned i) const;
  virtual std::string paramName(unsigned i) const;

  // virtual void setParam...

public:
  void    paintScheme(Schematic*) const;
  void    print(ViewPainter*, float);
  void    setCenter(int, int, bool relative=false);
  void    getCenter(int&, int&);
  int     textSize(int&, int&);
  void    Bounding(int&, int&, int&, int&);
  void    entireBounds(int&, int&, int&, int&, float);
  bool    getSelected(int, int);
  int     getTextSelected(int, int, float);
  void    rotate();
  void    mirrorX();  // mirror about X axis
  void    mirrorY();  // mirror about Y axis
  bool    load(const QString&);

  // to hold track of the component appearance for saving and copying
  bool mirroredX;   // is it mirrored about X axis or not
  int  rotated;     // rotation angle divided by 90 degrees

  virtual QString getSubcircuitFile() const { return ""; }
  // set the pointer scematic associated with the component
  // do somehting with buttons. can sb think of a more descriptive name?
  virtual void dialgButtStuff(ComponentDialog&)const;

  QList<Line *>     Lines;
  QList<struct Arc *>      Arcs;
  QList<Area *>     Rects;
  QList<Area *>     Ellips;
  QList<Port *>     Ports;
  QList<Text *>     Texts;
  mutable //bug: Q3PtrList does not support constness
      Q3PtrList<Property> Props;

  #define COMP_IS_OPEN    0
  #define COMP_IS_ACTIVE  1
  #define COMP_IS_SHORTEN 2
  bool isShort() const{return isActive==COMP_IS_SHORTEN;}
  bool isOpen() const{return isActive==COMP_IS_OPEN;}
//  QString label() const{return Name;}
  Q3PtrList<Property> const& params() const{return Props;}
  QList<Port*>const& ports() const{return Ports;}
// private: // not yet
  int  isActive; // should it be used in simulation or not ?
  mutable /*BUGBUGBUG*/ int  tx, ty;   // upper left corner of text (position)
  bool showName;

public:
  int cx() const{return Element::cx;}
  int cy() const{return Element::cy;}
  std::pair<int, int> center() const{return std::make_pair(Element::cx, Element::cy);}

public: // BUG
  virtual std::string type() const { return Model.toStdString(); }

public:
  QString const& obsolete_model_hack() const{
	  // BUG. do not use
	  return Model;
  }
  void setName(QString x){
	  setLabel(x);
	  // FIXME move to Element.
	  Name = x;
  }
  void obsolete_name_override_hack(QString x){
	  Name = x;
  }
  void gnd_obsolete_model_override_hack(QString x){
	  //assert (this is a gnd component); // fix later
	  Model = x;
  }
  QString const& description() const{
	  return Description;
  }
  void setType(std::string const& x){
	  // tmp kludge, store type in Model...
	  Model = QString::fromStdString(x);
  }

protected:
public: // ?!
  QString const& name() const{ return Name; }

private:
  char const* iconBasename() const{return bitmap_file;}
protected: // BUG
  QString Model;
protected: // BUG => Element.
  char* bitmap_file;
protected: // BUG
  QString  Description;
protected:
  virtual QString netlist() const;
  virtual QString vhdlCode(int);
  virtual QString verilogCode(int);

  int  analyseLine(const QString&, int);
  bool getIntegers(const QString&, int *i1=0, int *i2=0, int *i3=0,
                   int *i4=0, int *i5=0, int *i6=0);
  bool getPen(const QString&, QPen&, int);
  bool getBrush(const QString&, QBrush&, int);

  void copyComponent(Component*);
  Property * getProperty(const QString&);
private: // (hopefully) obsolete callbacks
  void recreateCallback();

}; // Component



class MultiViewComponent : public Component {
public:
  MultiViewComponent() { untested();
  };
  virtual ~MultiViewComponent() {};


private: // Symbol
  void recreate();

protected: // wrap legacy. don't use.
  void recreate(int i){
	  assert(i==0);
	  return recreate();
  }

protected:
  virtual void createSymbol() {};
};


class GateComponent : public MultiViewComponent {
public:
  GateComponent();
  QString netlist() const;
  QString vhdlCode(int);
  QString verilogCode(int);

protected:
  void createSymbol();
};

#endif
