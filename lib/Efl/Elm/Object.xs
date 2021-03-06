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
typedef Evas_Object ElmObject;
typedef Elm_Object_Item ElmObjectItem;
typedef Evas_Object EvasObject;

typedef struct saved_object_data _saved_object_data;

struct saved_object_data {
    SV *perldata;
};

MODULE = Efl::Elm::Object		PACKAGE = ElmObjectPtr     PREFIX = elm_object_

void 
elm_object_text_set(object,text)
    EvasObject *object
    char *text
    

void
elm_object_part_text_set(obj,part,text)
	EvasObject *obj
	const char *part
	const char *text


char *
elm_object_part_text_get(obj,part)
	const EvasObject *obj
	const char *part


void
elm_object_domain_translatable_part_text_set(obj,part,domain,text)
	EvasObject *obj
	const char *part
	const char *domain
	const char *text


char *
elm_object_translatable_part_text_get(obj,part)
	const EvasObject *obj
	const char *part


void
elm_object_domain_part_text_translatable_set(obj,part,domain,translatable)
	EvasObject *obj
	const char *part
	const char *domain
	Eina_Bool translatable


void
elm_object_part_content_set(obj,part,content)
	EvasObject *obj
	const char *part
	EvasObject *content


EvasObject *
elm_object_part_content_get(obj,part)
	const EvasObject *obj
	const char *part


EvasObject *
elm_object_part_content_unset(obj,part)
	EvasObject *obj
	const char *part


void
elm_object_access_info_set(obj,txt)
	EvasObject *obj
	const char *txt


char *
elm_object_access_info_get(obj)
	EvasObject *obj


EvasObject *
elm_object_name_find(obj,name,recurse)
	const EvasObject *obj
	const char *name
	int recurse


Eina_Bool
elm_object_style_set(obj,style)
	EvasObject *obj
	const char *style


char *
elm_object_style_get(obj)
	const EvasObject *obj


void
elm_object_disabled_set(obj,disabled)
	EvasObject *obj
	Eina_Bool disabled


Eina_Bool
elm_object_disabled_get(obj)
	const EvasObject *obj


Eina_Bool
elm_object_widget_check(obj)
	const EvasObject *obj


EvasObject *
elm_object_parent_widget_get(obj)
	const EvasObject *obj


EvasObject *
elm_object_top_widget_get(obj)
	const EvasObject *obj


char *
elm_object_widget_type_get(obj)
	const EvasObject *obj


void
elm_object_signal_emit(obj,emission,source)
	EvasObject *obj
	const char *emission
	const char *source

# func = Edje_Signal_Cb
void
elm_object_signal_callback_add(obj,emission,source,func,data)
	EvasObject *obj
	const char *emission
	const char *source
	SV* func
	SV *data


# void *
# elm_object_signal_callback_del(obj,emission,source,func)
#	EvasObject *obj
#	const char *emission
#	const char *source
#	SV* func

# func = Elm_Event_Cb
# void
# elm_object_event_callback_add(obj,func,data)
#	EvasObject *obj
#	SV* func
#	SV *data


# void *
# elm_object_event_callback_del(obj,func,data)
#	EvasObject *obj
#	SV* func
#	const SV *data


void
elm_object_orientation_mode_disabled_set(obj,disabled)
	EvasObject *obj
	Eina_Bool disabled


Eina_Bool
elm_object_orientation_mode_disabled_get(obj)
	const EvasObject *obj
	
	
#######################
# Tooltip Stuff (see elm_tooltip.h)
#######################


void
elm_object_tooltip_move_freeze_push(obj)
	EvasObject *obj


void
elm_object_tooltip_move_freeze_pop(obj)
	EvasObject *obj


int
elm_object_tooltip_move_freeze_get(obj)
	const EvasObject *obj


void
elm_object_tooltip_orient_set(obj,orient)
	EvasObject *obj
	int orient


int
elm_object_tooltip_orient_get(obj)
	const EvasObject *obj


void
elm_object_tooltip_show(obj)
	EvasObject *obj


void
elm_object_tooltip_hide(obj)
	EvasObject *obj


void
elm_object_tooltip_text_set(obj,text)
	EvasObject *obj
	const char *text


void
elm_object_tooltip_domain_translatable_text_set(obj,domain,text)
	EvasObject *obj
	const char *domain
	const char *text


void
elm_object_tooltip_content_cb_set(pobj,func,data,del_cb)
	SV *pobj
	SV *func
	SV *data
PREINIT:
        _perl_callback *sc = NULL;
        EvasObject *obj;
        IV tmp;
CODE:
    // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(EvasObject*,tmp);
    sc = perl_save_callback(aTHX_ func, pobj,"tooltip-content","Efl::PLSide::Callbacks");
    elm_object_tooltip_content_cb_set(obj,call_perl_tooltip_content_cb,(void *) sc,del_tooltip);

void
elm_object_tooltip_unset(obj)
	EvasObject *obj


void
elm_object_tooltip_style_set(obj,style)
	EvasObject *obj
	const char *style


char *
elm_object_tooltip_style_get(obj)
	const EvasObject *obj


Eina_Bool
elm_object_tooltip_window_mode_set(obj,disable)
	EvasObject *obj
	Eina_Bool disable


Eina_Bool
elm_object_tooltip_window_mode_get(obj)
	const EvasObject *obj

void
elm_object_scroll_hold_push(obj)
	const EvasObject *obj

void
elm_object_scroll_hold_pop(obj)
	const EvasObject *obj

int
elm_object_scroll_hold_get(obj)
	const EvasObject *obj

void
elm_object_scroll_freeze_push(obj)
	const EvasObject *obj

void
elm_object_scroll_freeze_pop(obj)
	const EvasObject *obj

int
elm_object_scroll_freeze_get(obj)
	const EvasObject *obj

void
elm_object_scroll_lock_x_set(obj,lock)
	const EvasObject *obj
	Eina_Bool lock

void
elm_object_scroll_lock_y_set(obj,lock)
	const EvasObject *obj
	Eina_Bool lock

Eina_Bool
elm_object_scroll_lock_x_get(obj)
	const EvasObject *obj

Eina_Bool
elm_object_scroll_lock_y_get(obj)
	const EvasObject *obj

void
elm_object_scroll_item_loop_enabled_set(obj,enable)
	const EvasObject *obj
	Eina_Bool enable

Eina_Bool
elm_object_scroll_item_loop_enabled_get(obj)
	const EvasObject *obj