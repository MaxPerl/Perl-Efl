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
typedef Elm_Spinner ElmSpinner;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Spinner		PACKAGE = Efl::Elm::Spinner     PREFIX = elm_spinner_

ElmSpinner * 
elm_spinner_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Spinner		PACKAGE = ElmSpinnerPtr     PREFIX = elm_spinner_


void
elm_spinner_special_value_del(obj,value)
	ElmSpinner *obj
	double value


char *
elm_spinner_special_value_get(obj,value)
	ElmSpinner *obj
	double value


void
elm_spinner_min_max_set(obj,min,max)
	ElmSpinner *obj
	double min
	double max


void
elm_spinner_min_max_get(obj,OUTLIST min,OUTLIST max)
	const ElmSpinner *obj
	double min
	double max


void
elm_spinner_step_set(obj,step)
	ElmSpinner *obj
	double step


double
elm_spinner_step_get(obj)
	const ElmSpinner *obj


void
elm_spinner_value_set(obj,val)
	ElmSpinner *obj
	double val


double
elm_spinner_value_get(obj)
	const ElmSpinner *obj


void
elm_spinner_wrap_set(obj,wrap)
	ElmSpinner *obj
	Eina_Bool wrap


Eina_Bool
elm_spinner_wrap_get(obj)
	const ElmSpinner *obj


void
elm_spinner_interval_set(obj,interval)
	ElmSpinner *obj
	double interval


double
elm_spinner_interval_get(obj)
	const ElmSpinner *obj


void
elm_spinner_round_set(obj,rnd)
	ElmSpinner *obj
	int rnd


int
elm_spinner_round_get(obj)
	const ElmSpinner *obj


void
elm_spinner_editable_set(obj,editable)
	ElmSpinner *obj
	Eina_Bool editable


Eina_Bool
elm_spinner_editable_get(obj)
	const ElmSpinner *obj


void
elm_spinner_base_set(obj,base)
	ElmSpinner *obj
	double base


double
elm_spinner_base_get(obj)
	const ElmSpinner *obj


void
elm_spinner_label_format_set(obj,fmt)
	ElmSpinner *obj
	const char *fmt


char *
elm_spinner_label_format_get(obj)
	const ElmSpinner *obj


void
elm_spinner_special_value_add(obj,value,label)
	ElmSpinner *obj
	double value
	const char *label
