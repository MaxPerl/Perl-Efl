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
typedef Evas_Object ElmPhoto;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Photo		PACKAGE = Efl::Elm::Photo

ElmPhoto * 
elm_photo_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Photo		PACKAGE = ElmPhotoPtr     PREFIX = elm_photo_

Eina_Bool
elm_photo_file_set(obj,file)
	ElmPhoto *obj
	const char *file


void
elm_photo_editable_set(obj,set)
	ElmPhoto *obj
	Eina_Bool set


Eina_Bool
elm_photo_editable_get(obj)
	const ElmPhoto *obj


void
elm_photo_fill_inside_set(obj,fill)
	ElmPhoto *obj
	Eina_Bool fill


Eina_Bool
elm_photo_fill_inside_get(obj)
	const ElmPhoto *obj


void
elm_photo_aspect_fixed_set(obj,fixed)
	ElmPhoto *obj
	Eina_Bool fixed


Eina_Bool
elm_photo_aspect_fixed_get(obj)
	const ElmPhoto *obj


void
elm_photo_size_set(obj,size)
	ElmPhoto *obj
	int size


int
elm_photo_size_get(obj)
	const ElmPhoto *obj


void
elm_photo_thumb_set(obj,file,group)
	ElmPhoto *obj
	const char *file
	const char *group


