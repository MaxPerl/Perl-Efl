#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>

#include "PLSide.h"

// We need this typedef to bless the created list into the class ElmWinPtr
// This class is a child class of Efl::Elm::Win, which inherits from EvasListPtr
// see the @ISA's in Elm/Win.pm
// By this trick we get a wonderful perlish oo-interface :-)
typedef Elm_Toolbar_Item ElmToolbarItem;
typedef Elm_Toolbar_Item_State ElmToolbarItemState;
typedef Evas_Object EvasObject;


MODULE = Efl::Elm::ToolbarItem		PACKAGE = ElmToolbarItemPtr     PREFIX = elm_toolbar_item_


ElmToolbarItem *
elm_toolbar_item_prev_get(obj)
	const ElmToolbarItem *obj


ElmToolbarItem *
elm_toolbar_item_next_get(obj)
	const ElmToolbarItem *obj


void
elm_toolbar_item_selected_set(obj,selected)
	ElmToolbarItem *obj
	Eina_Bool selected


Eina_Bool
elm_toolbar_item_selected_get(obj)
	const ElmToolbarItem *obj


void
elm_toolbar_item_priority_set(obj,priority)
	ElmToolbarItem *obj
	int priority


int
elm_toolbar_item_priority_get(obj)
	const ElmToolbarItem *obj


void
elm_toolbar_item_icon_set(obj,icon)
	ElmToolbarItem *obj
	const char *icon


char *
elm_toolbar_item_icon_get(obj)
	const ElmToolbarItem *obj


EvasObject *
elm_toolbar_item_object_get(obj)
	const ElmToolbarItem *obj


EvasObject *
elm_toolbar_item_icon_object_get(obj)
	const ElmToolbarItem *obj


void
elm_toolbar_item_separator_set(obj,separator)
	ElmToolbarItem *obj
	Eina_Bool separator


Eina_Bool
elm_toolbar_item_separator_get(obj)
	const ElmToolbarItem *obj


EvasObject *
elm_toolbar_item_menu_get(obj)
	const ElmToolbarItem *obj


Eina_Bool
elm_toolbar_item_state_set(obj,state)
	ElmToolbarItem *obj
	ElmToolbarItemState *state


ElmToolbarItemState *
elm_toolbar_item_state_get(obj)
	const ElmToolbarItem *obj


# Eina_Bool
# elm_toolbar_item_icon_memfile_set(obj,img,size,format,key)
#	ElmToolbarItem *obj
#	void *img
#	size_t size
#	const char *format
#	const char *key


Eina_Bool
elm_toolbar_item_icon_file_set(obj,file,key)
	ElmToolbarItem *obj
	const char *file
	const char *key


ElmToolbarItemState *
_elm_toolbar_item_state_add(pobj,icon,label,id)
	SV *pobj
	const char *icon
	const char *label
	int id
PREINIT:
    _perl_gendata *data;
    ElmToolbarItem *obj;
    IV tmp;
CODE:
    // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmToolbarItem*,tmp);
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_toolbar_item_state_add(obj,icon,label,call_perl_gen_item_selected,data);
OUTPUT:
    RETVAL


# Eina_Bool
# elm_toolbar_item_state_del(obj,state)
#	ElmToolbarItem *obj
#	ElmToolbarItem_State *state


ElmToolbarItemState *
elm_toolbar_item_state_next(obj)
	ElmToolbarItem *obj


ElmToolbarItemState *
elm_toolbar_item_state_prev(obj)
	ElmToolbarItem *obj


void
elm_toolbar_item_show(obj,scrollto)
	ElmToolbarItem *obj
	int scrollto


void
elm_toolbar_item_bring_in(obj,scrollto)
	ElmToolbarItem *obj
	int scrollto


void
elm_toolbar_item_menu_set(obj,menu)
	ElmToolbarItem *obj
	Eina_Bool menu

void
elm_toolbar_item_state_unset(it)
	ElmToolbarItem *it
