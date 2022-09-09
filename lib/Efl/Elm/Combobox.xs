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
typedef Elm_Combobox ElmCombobox;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Combobox		PACKAGE = Efl::Elm::Combobox

ElmCombobox * 
elm_combobox_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Combobox		PACKAGE = ElmComboboxPtr     PREFIX = elm_combobox_

Eina_Bool 
elm_combobox_expanded_get(const ElmCombobox *obj);

void 
elm_combobox_hover_begin(ElmCombobox *obj);

void 
elm_combobox_hover_end(ElmCombobox *obj);