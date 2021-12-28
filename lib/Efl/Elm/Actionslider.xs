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
typedef Evas_Object ElmActionslider;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Actionslider		PACKAGE = Efl::Elm::Actionslider     PREFIX = elm_actionslider_

ElmActionslider * 
elm_actionslider_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Actionslider		PACKAGE = ElmActionsliderPtr     PREFIX = elm_actionslider_

void
elm_actionslider_indicator_pos_set(obj,pos)
	ElmActionslider *obj
	int pos
	
	
int
elm_actionslider_indicator_pos_get(obj)
	const ElmActionslider *obj
	
	
void
elm_actionslider_magnet_pos_set(obj,pos)
	ElmActionslider *obj
	int pos
	
	
int
elm_actionslider_magnet_pos_get(obj)
	const ElmActionslider *obj


void
elm_actionslider_enabled_pos_set(obj,pos)
	ElmActionslider *obj
	int pos


int
elm_actionslider_enabled_pos_get(obj)
	const ElmActionslider *obj


char *
elm_actionslider_selected_label_get(obj)
	const ElmActionslider *obj
