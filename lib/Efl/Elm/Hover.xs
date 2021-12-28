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
typedef Elm_Hover ElmHover;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Hover		PACKAGE = Efl::Elm::Hover

ElmHover *
elm_hover_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Hover		PACKAGE = ElmHoverPtr     PREFIX = elm_hover_

void
elm_hover_parent_set(obj,parent)
    ElmHover *obj
    EvasObject *parent

EvasObject *
elm_hover_parent_get(obj)
    ElmHover *obj

void
elm_hover_target_set(obj,target)
	ElmHover *obj
	EvasObject *target


EvasObject *
elm_hover_target_get(obj)
	ElmHover *obj


char *
elm_hover_best_content_location_get(obj,pref_axis)
	ElmHover *obj
	int pref_axis


void
elm_hover_dismiss(obj)
	ElmHover *obj
