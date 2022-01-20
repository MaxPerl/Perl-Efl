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
typedef Evas_Object ElmRadio;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Radio		PACKAGE = Efl::Elm::Radio

ElmRadio * 
elm_radio_add(EvasObject *parent)

MODULE = Efl::Elm::Radio		PACKAGE = ElmRadioPtr     PREFIX = elm_radio_

void
elm_radio_value_set(obj,value)
	EvasObject *obj
	int value
    
int
elm_radio_value_get(obj)
	EvasObject *obj
    

void
elm_radio_state_value_set(obj,value)
	ElmRadio *obj
	int value


int
elm_radio_state_value_get(obj)
	ElmRadio *obj


# void
# elm_radio_value_pointer_set(obj,valuep)
#	ElmRadio *obj
#	int *valuep


EvasObject *
elm_radio_selected_object_get(obj)
	ElmRadio *obj


void
elm_radio_group_add(obj,group)
	ElmRadio *obj
	ElmRadio *group
