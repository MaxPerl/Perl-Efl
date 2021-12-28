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
typedef Evas_Object ElmInwin;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Inwin		PACKAGE = Efl::Elm::Inwin

ElmInwin * 
elm_win_inwin_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Inwin		PACKAGE = ElmInwinPtr     PREFIX = elm_win_inwin_

void
elm_win_inwin_content_set(obj,content)
	ElmInwin *obj
	EvasObject *content


EvasObject *
elm_win_inwin_content_get(obj)
	ElmInwin *obj


EvasObject *
elm_win_inwin_content_unset(obj)
	ElmInwin *obj

void 
elm_win_inwin_activate(obj)
    ElmInwin *obj
