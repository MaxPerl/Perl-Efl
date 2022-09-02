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
typedef Elm_Menu ElmMenu;
typedef Evas_Object EvasObject;
typedef Elm_Menu_Item ElmMenuItem;
typedef Eina_List EinaList;

MODULE = Efl::Elm::Menu		PACKAGE = Efl::Elm::Menu

ElmMenu * 
elm_menu_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Menu		PACKAGE = ElmMenuPtr     PREFIX = elm_menu_

void
elm_menu_parent_set(obj,parent)
	ElmMenu *obj
	EvasObject *parent


EvasObject *
elm_menu_parent_get(obj)
	ElmMenu *obj

ElmMenuItem *
elm_menu_selected_item_get(obj)
	ElmMenu *obj


ElmMenuItem *
elm_menu_first_item_get(obj)
	ElmMenu *obj


ElmMenuItem *
elm_menu_last_item_get(obj)
	ElmMenu *obj


EinaList *
elm_menu_items_get(obj)
	ElmMenu *obj


void
elm_menu_move(obj,x,y)
	ElmMenu *obj
	int x
	int y


# func ist eigtl. Evas_Smart_Cb func
ElmMenuItem *
_elm_menu_item_add(pobj,parent,icon,label,id)
	SV *pobj
	ElmMenuItem *parent
	const char *icon
	const char *label
	int id;
PREINIT:
    _perl_gendata *data;
    ElmMenu *obj;
    IV tmp;
    ElmMenuItem *item;
CODE:
    if (!parent) 
        parent = NULL;
    // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmMenu*,tmp);
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    item = elm_menu_item_add(obj,parent,icon,label,call_perl_gen_item_selected,data);
    elm_object_item_del_cb_set(item,call_perl_gen_del);
    RETVAL = item;
OUTPUT:
    RETVAL

void
elm_menu_open(obj)
	ElmMenu *obj


void
elm_menu_close(obj)
	ElmMenu *obj


ElmMenuItem *
elm_menu_item_separator_add(obj,parent)
	ElmMenu *obj
	ElmMenuItem *parent
