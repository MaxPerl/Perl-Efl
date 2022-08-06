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
typedef Elm_Ctxpopup ElmCtxpopup;
typedef Evas_Object EvasObject;
typedef Elm_Widget_Item ElmWidgetItem;
typedef Eina_List EinaList;

MODULE = Efl::Elm::Ctxpopup		PACKAGE = Efl::Elm::Ctxpopup

ElmCtxpopup *
elm_ctxpopup_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Ctxpopup		PACKAGE = ElmCtxpopupPtr     PREFIX = elm_ctxpopup_

ElmWidgetItem *
elm_ctxpopup_selected_item_get(obj)
	ElmCtxpopup *obj


ElmWidgetItem *
elm_ctxpopup_first_item_get(obj)
	ElmCtxpopup *obj


ElmWidgetItem *
elm_ctxpopup_last_item_get(obj)
	ElmCtxpopup *obj


EinaList *
elm_ctxpopup_items_get(obj)
	ElmCtxpopup *obj


void
elm_ctxpopup_horizontal_set(obj,horizontal)
	ElmCtxpopup *obj
	Eina_Bool horizontal


Eina_Bool
elm_ctxpopup_horizontal_get(obj)
	ElmCtxpopup *obj


void
elm_ctxpopup_auto_hide_disabled_set(obj,disabled)
	ElmCtxpopup *obj
	Eina_Bool disabled


Eina_Bool
elm_ctxpopup_auto_hide_disabled_get(obj)
	ElmCtxpopup *obj


void
elm_ctxpopup_hover_parent_set(obj,parent)
	ElmCtxpopup *obj
	EvasObject *parent


EvasObject *
elm_ctxpopup_hover_parent_get(obj)
	ElmCtxpopup *obj


void
elm_ctxpopup_direction_priority_set(obj,first,second,third,fourth)
	ElmCtxpopup *obj
	Elm_Ctxpopup_Direction first
	Elm_Ctxpopup_Direction second
	Elm_Ctxpopup_Direction third
	Elm_Ctxpopup_Direction fourth


void
elm_ctxpopup_direction_priority_get(obj,OUTLIST first,OUTLIST second,OUTLIST third,OUTLIST fourth)
	ElmCtxpopup *obj
	Elm_Ctxpopup_Direction first
	Elm_Ctxpopup_Direction second
	Elm_Ctxpopup_Direction third
	Elm_Ctxpopup_Direction fourth


int
elm_ctxpopup_direction_get(obj)
	ElmCtxpopup *obj


void
elm_ctxpopup_dismiss(obj)
	ElmCtxpopup *obj


void
elm_ctxpopup_clear(obj)
	ElmCtxpopup *obj

# TODO func (is a Evas_Smart_Cb) should be possible
ElmWidgetItem *
elm_ctxpopup_item_insert_before(obj,before,label,icon,func,data)
	ElmCtxpopup *obj
	ElmWidgetItem *before
	const char *label
	EvasObject *icon
	SV* func
	void *data
CODE:
if (SvOK(func) || data) {
        fprintf(stderr, "registering callback function is not supported at the moment \n");
    }

    RETVAL = elm_ctxpopup_item_insert_before(obj,before,label,icon, (Evas_Smart_Cb) NULL ,NULL);
OUTPUT:
    RETVAL


ElmWidgetItem *
elm_ctxpopup_item_insert_after(obj,after,label,icon,func,data)
	ElmCtxpopup *obj
	ElmWidgetItem *after
	const char *label
	EvasObject *icon
	SV* func
	void *data
CODE:
if (SvOK(func) || data) {
        fprintf(stderr, "registering callback function is not supported at the moment \n");
    }

    RETVAL = elm_ctxpopup_item_insert_after(obj,after,label,icon, (Evas_Smart_Cb) NULL ,NULL);
OUTPUT:
    RETVAL


ElmWidgetItem *
elm_ctxpopup_item_append(obj,label,icon,func,data)
	ElmCtxpopup *obj
	const char *label
	EvasObject *icon
	SV* func
	void *data
CODE:
    if (SvOK(func) || data) {
        fprintf(stderr, "registering callback function is not supported at the moment \n");
    }

    RETVAL = elm_ctxpopup_item_append(obj,label,icon, (Evas_Smart_Cb) NULL ,NULL);
OUTPUT:
    RETVAL

ElmWidgetItem *
elm_ctxpopup_item_prepend(obj,label,icon,func,data)
	ElmCtxpopup *obj
	const char *label
	EvasObject *icon
	SV* func
	void *data
CODE:
    if (SvOK(func) || data) {
        fprintf(stderr, "registering callback function is not supported at the moment \n");
    }

    RETVAL = elm_ctxpopup_item_prepend(obj,label,icon,(Evas_Smart_Cb) NULL ,NULL);
OUTPUT:
    RETVAL
