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
typedef Eo ElmSegmentItem;
typedef Evas_Object EvasObject;


MODULE = Efl::Elm::SegmentItem		PACKAGE = ElmSegmentItemPtr     PREFIX = elm_segment_control_item_

int
elm_segment_control_item_index_get(obj)
	const ElmSegmentItem *obj


EvasObject *
elm_segment_control_item_object_get(obj)
	const ElmSegmentItem *obj


void
elm_segment_control_item_selected_set(obj,selected)
	ElmSegmentItem *obj
	Eina_Bool selected
