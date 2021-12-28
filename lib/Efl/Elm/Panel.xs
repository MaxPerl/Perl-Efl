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
typedef Evas_Object ElmPanel;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Panel		PACKAGE = Efl::Elm::Panel

ElmPanel *
elm_panel_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Panel		PACKAGE = ElmPanelPtr     PREFIX = elm_panel_

void
elm_panel_orient_set(obj,orient)
	ElmPanel *obj
	int orient


int
elm_panel_orient_get(obj)
	const ElmPanel *obj


void
elm_panel_hidden_set(obj,hidden)
	ElmPanel *obj
	Eina_Bool hidden


Eina_Bool
elm_panel_hidden_get(obj)
	const ElmPanel *obj


void
elm_panel_scrollable_set(obj,scrollable)
	ElmPanel *obj
	Eina_Bool scrollable


Eina_Bool
elm_panel_scrollable_get(obj)
	const ElmPanel *obj


void
elm_panel_scrollable_content_size_set(obj,ratio)
	ElmPanel *obj
	double ratio


double
elm_panel_scrollable_content_size_get(obj)
	const ElmPanel *obj


void
elm_panel_toggle(obj)
	ElmPanel *obj
