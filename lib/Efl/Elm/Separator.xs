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
typedef Evas_Object ElmSeparator;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Separator		PACKAGE = Efl::Elm::Separator     PREFIX = elm_separator_

ElmSeparator * 
elm_separator_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Separator		PACKAGE = ElmSeparatorPtr     PREFIX = elm_separator_

void
elm_separator_horizontal_set(obj,horizontal)
	ElmSeparator *obj
	Eina_Bool horizontal


Eina_Bool
elm_separator_horizontal_get(obj)
	const ElmSeparator *obj


