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
typedef Evas_Object ElmBubble;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Bubble		PACKAGE = Efl::Elm::Bubble

ElmBubble *
elm_bubble_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Bubble		PACKAGE = ElmBubblePtr     PREFIX = elm_bubble_

void
elm_bubble_pos_set(obj,pos)
	ElmBubble *obj
	int pos


int
elm_bubble_pos_get(obj)
	const ElmBubble *obj
