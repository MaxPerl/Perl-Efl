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
typedef Evas_Object ElmSegmentControl;
typedef Elm_Widget_Item ElmSegmentItem;
typedef Evas_Object EvasObject;
typedef Evas_Object ElmIcon;

MODULE = Efl::Elm::SegmentControl		PACKAGE = Efl::Elm::SegmentControl

ElmSegmentControl * 
elm_segment_control_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::SegmentControl		PACKAGE = ElmSegmentControlPtr     PREFIX = elm_segment_control_


int
elm_segment_control_item_count_get(obj)
	const ElmSegmentControl *obj


ElmSegmentItem *
elm_segment_control_item_selected_get(obj)
	const ElmSegmentControl *obj


char *
elm_segment_control_item_label_get(obj,idx)
	const ElmSegmentControl *obj
	int idx


ElmSegmentItem *
elm_segment_control_item_insert_at(obj,icon,label,idx)
	ElmSegmentControl *obj
	EvasObject *icon
	const char *label
	int idx


ElmSegmentItem *
elm_segment_control_item_get(obj,idx)
	const ElmSegmentControl *obj
	int idx


void
elm_segment_control_item_del_at(obj,idx)
	ElmSegmentControl *obj
	int idx


ElmSegmentItem *
elm_segment_control_item_add(obj,icon,label)
	ElmSegmentControl *obj
	EvasObject *icon
	const char *label


ElmIcon *
elm_segment_control_item_icon_get(obj,idx)
	const ElmSegmentControl *obj
	int idx
