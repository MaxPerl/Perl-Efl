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
typedef Efl_Ui_Frame ElmFrame;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Frame		PACKAGE = Efl::Elm::Frame

ElmFrame *
elm_frame_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Frame		PACKAGE = ElmFramePtr     PREFIX = elm_frame_

void
elm_frame_collapse_set(obj,collapse)
	ElmFrame *obj
	Eina_Bool collapse


Eina_Bool
elm_frame_collapse_get(obj)
	ElmFrame *obj


void
elm_frame_autocollapse_set(obj,autocollapse)
	ElmFrame *obj
	Eina_Bool autocollapse


Eina_Bool
elm_frame_autocollapse_get(obj)
	ElmFrame *obj


void
elm_frame_collapse_go(obj,collapse)
	ElmFrame *obj
	Eina_Bool collapse


