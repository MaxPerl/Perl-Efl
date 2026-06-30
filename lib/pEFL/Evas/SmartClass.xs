#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>

typedef Evas_Smart_Class EvasSmartClass;
typedef Evas_Object EvasObject;

MODULE = pEFL::Evas::SmartClass		PACKAGE = pEFL::Evas::SmartClass     


MODULE = pEFL::Evas::SmartClass		PACKAGE = EvasSmartClassPtr

void
add(sc, obj)
    EvasSmartClass *sc
    EvasObject     *obj
CODE:
    if (sc->add) sc->add(obj);
    
void
del(sc, obj)
    EvasSmartClass *sc
    EvasObject      *obj
CODE:
    if (sc->del) sc->del(obj);

void
move(sc, obj, x, y)
    EvasSmartClass *sc
    EvasObject      *obj
    Evas_Coord        x
    Evas_Coord        y
CODE:
    if (sc->move) sc->move(obj, x, y);

void
resize(sc, obj, w, h)
    EvasSmartClass *sc
    EvasObject      *obj
    Evas_Coord        w
    Evas_Coord        h
CODE:
    if (sc->resize) sc->resize(obj, w, h);

void
show(sc, obj)
    EvasSmartClass *sc
    EvasObject      *obj
CODE:
    if (sc->show) sc->show(obj);

void
hide(sc, obj)
    EvasSmartClass *sc
    EvasObject      *obj
CODE:
    if (sc->hide) sc->hide(obj);
    
void
color_set(sc, obj, r, g, b, a)
	EvasSmartClass 	*sc
    EvasObject      *obj
    int				r
    int				g
    int				b
    int				a
CODE:
    if (sc->color_set) sc->color_set(obj,r,g,b,a);
    
void
clip_set(sc, obj, clip)
    EvasSmartClass *sc
    EvasObject      *obj
    EvasObject		*clip
CODE:
    if (sc->clip_set) sc->clip_set(obj, clip);
    
void
clip_unset(sc, obj)
    EvasSmartClass *sc
    EvasObject      *obj
CODE:
    if (sc->clip_unset) sc->clip_unset(obj);
    
void
calculate(sc, obj)
    EvasSmartClass *sc
    EvasObject      *obj
CODE:
    if (sc->calculate) sc->calculate(obj);
    
void
member_add(sc, obj, member)
    EvasSmartClass	*sc
    EvasObject      *obj
    EvasObject		*member
CODE:
    if (sc->member_add) sc->member_add(obj, member);
    
void
member_del(sc, obj, member)
    EvasSmartClass	*sc
    EvasObject      *obj
    EvasObject		*member
CODE:
    if (sc->member_del) sc->member_del(obj, member);
