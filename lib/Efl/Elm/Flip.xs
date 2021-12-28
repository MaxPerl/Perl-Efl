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
typedef Elm_Flip ElmFlip;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Flip		PACKAGE = Efl::Elm::Flip

ElmFlip *
elm_flip_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Flip		PACKAGE = ElmFlipPtr     PREFIX = elm_flip_

void
elm_flip_interaction_direction_hitsize_set(obj,dir,hitsize)
	ElmFlip *obj
	int dir
	double hitsize


double
elm_flip_interaction_direction_hitsize_get(obj,dir)
	ElmFlip *obj
	int dir


void
elm_flip_interaction_direction_enabled_set(obj,dir,enabled)
	ElmFlip *obj
	int dir
	Eina_Bool enabled


Eina_Bool
elm_flip_interaction_direction_enabled_get(obj,dir)
	ElmFlip *obj
	int dir


void
elm_flip_perspective_set(obj,foc,x,y)
	EvasObject *obj
	int foc
	int x
	int y
