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
typedef Elm_Ctxpopup_Item ElmCtxpopupItem;
typedef Elm_Widget_Item ElmWidgetItem;


MODULE = Efl::Elm::CtxpopupItem		PACKAGE = ElmCtxpopupItemPtr     PREFIX = elm_ctxpopupItem_item_

ElmWidgetItem *
elm_ctxpopup_item_prev_get(obj)
	ElmCtxpopupItem *obj


ElmWidgetItem *
elm_ctxpopup_item_next_get(obj)
	ElmCtxpopupItem *obj


void
elm_ctxpopup_item_selected_set(obj,selected)
	ElmCtxpopupItem *obj
	Eina_Bool selected


Eina_Bool
elm_ctxpopup_item_selected_get(obj)
	ElmCtxpopupItem *obj


#void
#elm_ctxpopup_item_init(obj,func,data)
#	ElmCtxpopupItem *obj
#	Evas_Smart_Cb func
#	const void *data
