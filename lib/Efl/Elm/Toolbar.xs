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
typedef Elm_Toolbar ElmToolbar;
typedef Elm_Toolbar_Item ElmToolbarItem;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Toolbar		PACKAGE = Efl::Elm::Toolbar     PREFIX = elm_toolbar_

ElmToolbar * 
elm_toolbar_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Toolbar		PACKAGE = ElmToolbarPtr     PREFIX = elm_toolbar_


void
elm_toolbar_reorder_mode_set(obj,reorder_mode)
	ElmToolbar *obj
	Eina_Bool reorder_mode


Eina_Bool
elm_toolbar_reorder_mode_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_transverse_expanded_set(obj,transverse_expanded)
	ElmToolbar *obj
	Eina_Bool transverse_expanded


Eina_Bool
elm_toolbar_transverse_expanded_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_icon_order_lookup_set(obj,order)
	ElmToolbar *obj
	int order


int
elm_toolbar_icon_order_lookup_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_horizontal_set(obj,horizontal)
	ElmToolbar *obj
	Eina_Bool horizontal


Eina_Bool
elm_toolbar_horizontal_get(obj)
	const ElmToolbar *obj

# TODO ab hier:

ElmToolbarItem *
elm_toolbar_selected_item_get(obj)
	const ElmToolbar *obj


ElmToolbarItem *
elm_toolbar_first_item_get(obj)
	const ElmToolbar *obj


ElmToolbarItem *
elm_toolbar_last_item_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_homogeneous_set(obj,homogeneous)
	ElmToolbar *obj
	Eina_Bool homogeneous


Eina_Bool
elm_toolbar_homogeneous_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_align_set(obj,align)
	ElmToolbar *obj
	double align


double
elm_toolbar_align_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_select_mode_set(obj,mode)
	ElmToolbar *obj
	int mode


int
elm_toolbar_select_mode_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_icon_size_set(obj,icon_size)
	ElmToolbar *obj
	int icon_size


int
elm_toolbar_icon_size_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_shrink_mode_set(obj,shrink_mode)
	ElmToolbar *obj
	int shrink_mode


int
elm_toolbar_shrink_mode_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_menu_parent_set(obj,parent)
	ElmToolbar *obj
	EvasObject *parent


EvasObject *
elm_toolbar_menu_parent_get(obj)
	const ElmToolbar *obj


void
elm_toolbar_standard_priority_set(obj,priority)
	ElmToolbar *obj
	int priority


int
elm_toolbar_standard_priority_get(obj)
	const ElmToolbar *obj


ElmToolbarItem *
elm_toolbar_more_item_get(obj)
	const ElmToolbar *obj


ElmToolbarItem *
_elm_toolbar_item_insert_before(pobj,before,icon,label,id)
	SV *pobj
	ElmToolbarItem *before
	const char *icon
	const char *label
	int id
PREINIT:
    _perl_gendata *data;
    ElmToolbar *obj;
    IV tmp;
CODE:
   // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmToolbar*,tmp);
    
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_toolbar_item_insert_before(obj,before,icon,label,call_perl_gen_item_selected, data);
OUTPUT:
    RETVAL


ElmToolbarItem *
_elm_toolbar_item_insert_after(pobj,after,icon,label,id)
	SV *pobj
	ElmToolbarItem *after
	const char *icon
	const char *label
	int id
PREINIT:
    _perl_gendata *data;
    ElmToolbar *obj;
    IV tmp;
CODE:
   // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmToolbar*,tmp);
    
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_toolbar_item_insert_after(obj,after,icon,label,call_perl_gen_item_selected, data);
OUTPUT:
    RETVAL


ElmToolbarItem *
_elm_toolbar_item_append(pobj,icon,label,id)
	SV *pobj
	const char *icon
	const char *label
	int id
PREINIT:
    _perl_gendata *data;
    ElmToolbar *obj;
    IV tmp;
CODE:
    // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmToolbar*,tmp);
    
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_toolbar_item_append(obj,icon,label,call_perl_gen_item_selected, data);
OUTPUT:
    RETVAL

int
elm_toolbar_items_count(obj)
	const ElmToolbar *obj


ElmToolbarItem *
_elm_toolbar_item_prepend(pobj,icon,label,id)
	SV *pobj
	const char *icon
	const char *label
	int id
PREINIT:
    _perl_gendata *data;
    ElmToolbar *obj;
    IV tmp;
CODE:
    // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmToolbar*,tmp);
    
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_toolbar_item_prepend(obj,icon,label,call_perl_gen_item_selected, data);
OUTPUT:
    RETVAL

ElmToolbarItem *
elm_toolbar_item_find_by_label(obj,label)
	const ElmToolbar *obj
	const char *label


MODULE = Efl::Elm::Toolbar	PACKAGE = Efl::Elm::Toolbar

BOOT:
/* set up constant subs */
    {
	HV *stash = gv_stashpvn("ELM::TOOLBAR", 12, TRUE);
	newCONSTSUB(stash, "SHRINK_NONE",               newSViv(ELM_TOOLBAR_SHRINK_NONE));
	newCONSTSUB(stash, "SHRINK_HIDE",            newSViv(ELM_TOOLBAR_SHRINK_HIDE));
	newCONSTSUB(stash, "SHRINK_SCROLL",           newSViv(ELM_TOOLBAR_SHRINK_SCROLL));
	newCONSTSUB(stash, "SHRINK_EXPAND",      newSViv(ELM_TOOLBAR_SHRINK_EXPAND));
	newCONSTSUB(stash, "SHRINK_LAST",            newSViv(ELM_TOOLBAR_SHRINK_LAST));
    }
