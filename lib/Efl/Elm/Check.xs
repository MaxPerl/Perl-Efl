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
typedef Evas_Object ElmCheck;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Check		PACKAGE = Efl::Elm::Check     PREFIX = elm_check_

ElmCheck * 
elm_check_add(EvasObject *parent)

MODULE = Efl::Elm::Check		PACKAGE = ElmCheckPtr     PREFIX = elm_check_

void
elm_check_state_set(obj,state)
    EvasObject *obj
    Eina_Bool state
    
Eina_Bool
elm_check_state_get(obj)
    EvasObject *obj

void
elm_check_state_pointer_set(obj,statep)
    EvasObject *obj
    Eina_Bool *statep
    
