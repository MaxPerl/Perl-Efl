#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>

// We need this typedef to bless the created list into the class ElmWinPtr
// This class is a child class of Efl::Elm::Win, which inherits from EvasListPtr
// see the @ISA's in Elm/Win.pm
// By this trick we get a wonderful perlish oo-interface :-)
typedef Elm_Naviframe_Item ElmNaviframeItem;
typedef Evas_Object EvasObject;


MODULE = Efl::Elm::NaviframeItem		PACKAGE = ElmNaviframeItemPtr     PREFIX = elm_naviframe_item_

void
elm_naviframe_item_pop_to(obj)
	ElmNaviframeItem *obj


Eina_Bool
elm_naviframe_item_title_enabled_get(obj)
	const ElmNaviframeItem *obj


void
elm_naviframe_item_title_enabled_set(obj,enable,transition)
	ElmNaviframeItem *obj
	Eina_Bool enable
	Eina_Bool transition


void
elm_naviframe_item_promote(obj)
	ElmNaviframeItem *obj


# void
# elm_naviframe_item_pop_cb_set(obj,func,data)
#	ElmNaviframeItem *obj
#	ElmNaviframeItem_Pop_Cb func
#	void *data


void
elm_naviframe_item_style_set(obj,style)
	ElmNaviframeItem *obj
	const char *style


char *
elm_naviframe_item_style_get(obj)
	const ElmNaviframeItem *obj
