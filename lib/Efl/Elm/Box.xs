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
typedef Elm_Box ElmBox;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Box		PACKAGE = Efl::Elm::Box

ElmBox * 
elm_box_add(EvasObject *parent)

MODULE = Efl::Elm::Box		PACKAGE = ElmBoxPtr     PREFIX = elm_box_

void
elm_box_homogeneous_set(obj,homogeneous)
	ElmBox *obj
	Eina_Bool homogeneous


Eina_Bool
elm_box_homogeneous_get(obj)
	const ElmBox *obj


void
elm_box_align_set(obj,horizontal,vertical)
	ElmBox *obj
	double horizontal
	double vertical


void
elm_box_align_get(obj,OUTLIST horizontal,OUTLIST vertical)
	const ElmBox *obj
	double horizontal
	double vertical


void
elm_box_horizontal_set(obj,horizontal)
	ElmBox *obj
	Eina_Bool horizontal


Eina_Bool
elm_box_horizontal_get(obj)
	const ElmBox *obj


void
elm_box_padding_set(obj,horizontal,vertical)
	ElmBox *obj
	int horizontal
	int vertical


void
elm_box_padding_get(obj,OUTLIST horizontal,OUTLIST vertical)
	const ElmBox *obj
	int horizontal
	int vertical


void
elm_box_pack_end(obj,subobj)
	ElmBox *obj
	EvasObject *subobj


void
elm_box_unpack_all(obj)
	ElmBox *obj


void
elm_box_unpack(obj,subobj)
	ElmBox *obj
	EvasObject *subobj


void
elm_box_pack_after(obj,subobj,after)
	ElmBox *obj
	EvasObject *subobj
	EvasObject *after


void
elm_box_pack_start(obj,subobj)
	ElmBox *obj
	EvasObject *subobj


void
elm_box_recalculate(obj)
	ElmBox *obj


void
elm_box_pack_before(obj,subobj,before)
	ElmBox *obj
	EvasObject *subobj
	EvasObject *before


void
elm_box_clear(obj)
	ElmBox *obj



