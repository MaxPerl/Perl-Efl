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
typedef Evas_Object ElmButton;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Button		PACKAGE = Efl::Elm::Button

ElmButton *
elm_button_add(EvasObject *parent)

MODULE = Efl::Elm::Button		PACKAGE = ElmButtonPtr     PREFIX = elm_button_

void
elm_button_autorepeat_initial_timeout_set(obj,t)
    EvasObject *obj
    double t

double
elm_button_autorepeat_initial_timeout_get(obj)
    EvasObject *obj

void
elm_button_autorepeat_gap_timeout_set(obj,t)
    EvasObject *obj
    double t

double
elm_button_autorepeat_gap_timeout_get(obj)
    EvasObject *obj

void
elm_button_autorepeat_set(obj,on)
    EvasObject *obj
    Eina_Bool on

Eina_Bool
elm_button_autorepeat_get(obj)
    EvasObject *obj
