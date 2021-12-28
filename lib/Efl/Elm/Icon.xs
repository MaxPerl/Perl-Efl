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
typedef Evas_Object ElmIcon;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Icon		PACKAGE = Efl::Elm::Icon

ElmIcon *
elm_icon_add(EvasObject *parent)

MODULE = Efl::Elm::Icon		PACKAGE = ElmIconPtr     PREFIX = elm_icon_

char *
elm_config_icon_theme_get()

void
elm_config_icon_theme_set (theme)
    char *theme

void
elm_icon_thumb_set (obj, file, group)
    EvasObject *obj
    char *file
    char *group

# DEPRECATED
# void
# elm_icon_order_lookup_set (obj,order)
#    EvasObject *obj
#    int order

# DEPRECATED
#int
# elm_icon_order_lookup_get (obj)
#    EvasObject *obj

Eina_Bool
elm_icon_standard_set (obj,name)
    EvasObject *obj
    char *name

char *
elm_icon_standard_get (obj)
     EvasObject *obj
