#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>

#include "PLSide.h"

// We need this typedef to bless the created object into the class ElmWinPtr
// This class is a child class of Efl::Elm::Win, which inherits from EvasObjectPtr
// see the @ISA's in Elm/Win.pm
// By this trick we get a wonderful perlish oo-interface :-)
typedef Elm_Hoversel ElmHoversel;
typedef Elm_Widget_Item ElmWidgetItem;
typedef Evas_Object EvasObject;
typedef Eina_List EinaList;

MODULE = Efl::Elm::Hoversel		PACKAGE = Efl::Elm::Hoversel

ElmHoversel * 
elm_hoversel_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Hoversel		PACKAGE = ElmHoverselPtr     PREFIX = elm_hoversel_

void
elm_hoversel_horizontal_set(obj,horizontal)
	ElmHoversel *obj
	Eina_Bool horizontal


Eina_Bool
elm_hoversel_horizontal_get(obj)
	ElmHoversel *obj


void
elm_hoversel_hover_parent_set(obj,parent)
	ElmHoversel *obj
	EvasObject *parent


EvasObject *
elm_hoversel_hover_parent_get(obj)
	ElmHoversel *obj


Eina_Bool
elm_hoversel_expanded_get(obj)
	ElmHoversel *obj


EinaList *
elm_hoversel_items_get(obj)
	ElmHoversel *obj


void
elm_hoversel_auto_update_set(obj,auto_update)
	ElmHoversel *obj
	Eina_Bool auto_update


Eina_Bool
elm_hoversel_auto_update_get(obj)
	ElmHoversel *obj


void
elm_hoversel_hover_begin(obj)
	ElmHoversel *obj


void
elm_hoversel_clear(obj)
	ElmHoversel *obj


void
elm_hoversel_hover_end(obj)
	ElmHoversel *obj


ElmWidgetItem *
_elm_hoversel_item_add(pobj,label,icon_file,icon_type,id)
	SV *pobj
	const char *label
	const char *icon_file
	int icon_type
	int id
PREINIT:
    _perl_gendata *data;
    ElmHoversel *obj;
    IV tmp;
CODE:
    // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmHoversel*,tmp);
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_hoversel_item_add(obj,label,icon_file,icon_type,call_perl_gen_item_selected,data);
OUTPUT:
    RETVAL


