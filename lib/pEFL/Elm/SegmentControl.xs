#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>


typedef Evas_Object ElmSegmentControl;
typedef Elm_Widget_Item ElmSegmentItem;
typedef Evas_Object EvasObject;
typedef Evas_Object ElmIcon;

MODULE = pEFL::Elm::SegmentControl		PACKAGE = pEFL::Elm::SegmentControl

ElmSegmentControl * 
elm_segment_control_add(parent)
    EvasObject *parent

MODULE = pEFL::Elm::SegmentControl		PACKAGE = ElmSegmentControlPtr     PREFIX = elm_segment_control_


int
elm_segment_control_item_count_get(obj)
	const ElmSegmentControl *obj


ElmSegmentItem *
elm_segment_control_item_selected_get(obj)
	const ElmSegmentControl *obj


const char *
elm_segment_control_item_label_get(obj,idx)
	const ElmSegmentControl *obj
	int idx


ElmSegmentItem *
_elm_segment_control_item_insert_at(obj,icon,label,idx)
	ElmSegmentControl *obj
	EvasObject *icon
	const char *label
	int idx
CODE:
	RETVAL = elm_segment_control_item_insert_at(obj,icon,label,idx);
OUTPUT:
	RETVAL

ElmSegmentItem *
elm_segment_control_item_get(obj,idx)
	const ElmSegmentControl *obj
	int idx


void
elm_segment_control_item_del_at(obj,idx)
	ElmSegmentControl *obj
	int idx


ElmSegmentItem *
_elm_segment_control_item_add(obj,icon,label)
	ElmSegmentControl *obj
	EvasObject *icon
	const char *label
CODE:
	RETVAL = elm_segment_control_item_add(obj,icon,label);
OUTPUT:
	RETVAL


ElmIcon *
elm_segment_control_item_icon_get(obj,idx)
	const ElmSegmentControl *obj
	int idx
