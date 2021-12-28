#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>

// We need this typedef to bless the created object into the class ElmWinPtr
// This class is a child class of Efl::Elm::Win, which inherits from EvasObjectPtr
// see the @ISA's in Elm/Win.pm
// By this trick we get a wonderful perlish oo-interface :-)
typedef Elm_Mapbuf ElmMapbuf;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Mapbuf		PACKAGE = Efl::Elm::Mapbuf     PREFIX = elm_mapbuf_

ElmMapbuf * 
elm_mapbuf_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Mapbuf		PACKAGE = ElmMapbufPtr     PREFIX = elm_mapbuf_

void
elm_mapbuf_auto_set(obj,on)
	ElmMapbuf *obj
	Eina_Bool on


Eina_Bool
elm_mapbuf_auto_get(obj)
	ElmMapbuf *obj


void
elm_mapbuf_smooth_set(obj,smooth)
	ElmMapbuf *obj
	Eina_Bool smooth


Eina_Bool
elm_mapbuf_smooth_get(obj)
	ElmMapbuf *obj


void
elm_mapbuf_alpha_set(obj,alpha)
	ElmMapbuf *obj
	Eina_Bool alpha


Eina_Bool
elm_mapbuf_alpha_get(obj)
	ElmMapbuf *obj


void
elm_mapbuf_enabled_set(obj,enabled)
	ElmMapbuf *obj
	Eina_Bool enabled


Eina_Bool
elm_mapbuf_enabled_get(obj)
	ElmMapbuf *obj


void
elm_mapbuf_point_color_set(obj,idx,r,g,b,a)
	ElmMapbuf *obj
	int idx
	int r
	int g
	int b
	int a


void
elm_mapbuf_point_color_get(obj,idx,OUTLIST r,OUTLIST g,OUTLIST b,OUTLIST a)
	ElmMapbuf *obj
	int idx
	int r
	int g
	int b
	int a


