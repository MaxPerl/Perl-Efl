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
typedef Evas_Object ElmLabel;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Label		PACKAGE = Efl::Elm::Label

ElmLabel *
elm_label_add(EvasObject *parent)

MODULE = Efl::Elm::Label		PACKAGE = ElmLabelPtr     PREFIX = elm_label_

void
elm_label_wrap_width_set(obj,w)
    ElmLabel *obj
    int w

int
elm_label_wrap_width_get(obj)
    ElmLabel *obj

void
elm_label_slide_speed_set(obj,speed)
    ElmLabel *obj
    double speed

double
elm_label_slide_speed_get(obj)
    ElmLabel *obj

void
elm_label_slide_mode_set(obj,mode)
    ElmLabel *obj
    int mode

# TODO: Get the constants?
int
elm_label_slide_mode_get(obj)
    ElmLabel *obj

void
elm_label_slide_duration_set(obj,duration)
    ElmLabel *obj
    double duration

double
elm_label_slide_duration_get(obj)
    ElmLabel *obj

# wrap = ELM_WRAP_TYPE=int??
void
elm_label_line_wrap_set(obj,wrap)
    ElmLabel *obj
    int wrap

int
elm_label_line_wrap_get(obj)
    ElmLabel *obj

void
elm_label_ellipsis_set(obj,ellipsis)
    ElmLabel *obj
    Eina_Bool ellipsis

Eina_Bool
elm_label_ellipsis_get(obj)
    ElmLabel *obj

void
elm_label_slide_go(obj)
    ElmLabel *obj
