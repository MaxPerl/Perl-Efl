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
typedef Evas_Object ElmBg;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Bg		PACKAGE = Efl::Elm::Bg

ElmBg * 
elm_bg_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Bg		PACKAGE = ElmBgPtr     PREFIX = elm_bg_

void
elm_bg_color_set(obj,r,g,b)
	EvasObject *obj
	int r
	int g
	int b


void
elm_bg_color_get(obj,OUTLIST r,OUTLIST g,OUTLIST b)
	const EvasObject *obj
	int r
	int g
	int b


# TODO: obj ist const Eo *obj
Eina_Bool
elm_bg_file_set(obj,file,group)
	EvasObject *obj
	const char *file
	const char *group


# TODO: obj ist const Eo *obj
void
elm_bg_file_get(obj,OUTLIST file,OUTLIST group)
	const EvasObject *obj
	const char *file
	const char *group


void
elm_bg_option_set(obj,option)
	EvasObject *obj
	int option


int
elm_bg_option_get(obj)
	const EvasObject *obj


void
elm_bg_load_size_set(obj,w,h)
	EvasObject *obj
	int w
	int h
