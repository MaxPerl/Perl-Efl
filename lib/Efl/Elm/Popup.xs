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
typedef Elm_Popup ElmPopup;
typedef Elm_Widget_Item ElmWidgetItem;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Popup		PACKAGE = Efl::Elm::Popup

ElmPopup *
elm_popup_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Popup		PACKAGE = ElmPopupPtr     PREFIX = elm_popup_


void
elm_popup_align_set(obj,horizontal,vertical)
	ElmPopup *obj
	double horizontal
	double vertical


void
elm_popup_align_get(obj,OUTLIST horizontal,OUTLIST vertical)
	const ElmPopup *obj
	double horizontal
	double vertical


void
elm_popup_allow_events_set(obj,allow)
	ElmPopup *obj
	Eina_Bool allow


Eina_Bool
elm_popup_allow_events_get(obj)
	const ElmPopup *obj


void
elm_popup_content_text_wrap_type_set(obj,wrap)
	ElmPopup *obj
	int wrap


int
elm_popup_content_text_wrap_type_get(obj)
	const ElmPopup *obj


void
elm_popup_orient_set(obj,orient)
	ElmPopup *obj
	int orient


int
elm_popup_orient_get(obj)
	const ElmPopup *obj


void
elm_popup_timeout_set(obj,timeout)
	ElmPopup *obj
	double timeout


double
elm_popup_timeout_get(obj)
	const ElmPopup *obj


void
elm_popup_scrollable_set(obj,scroll)
	ElmPopup *obj
	Eina_Bool scroll


Eina_Bool
elm_popup_scrollable_get(obj)
	const ElmPopup *obj


ElmWidgetItem *
elm_popup_item_append(obj,label,icon,func,data)
	ElmPopup *obj
	const char *label
	EvasObject *icon
	SV* func
	void *data
CODE:
    if (SvOK(func)) {
        fprintf(stderr, "registering callback function is not supported at the moment \n");
    }
    RETVAL = elm_popup_item_append(obj,label,icon, (Evas_Smart_Cb) NULL ,NULL);
OUTPUT:
    RETVAL


void
elm_popup_dismiss(obj)
	ElmPopup *obj
