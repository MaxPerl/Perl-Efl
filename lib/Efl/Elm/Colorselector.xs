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
typedef Evas_Object ElmColorselector;
typedef Evas_Object EvasObject;
typedef Elm_Object_Item ElmColorselectorPaletteItem;
typedef Eina_List EinaList;

MODULE = Efl::Elm::Colorselector		PACKAGE = Efl::Elm::Colorselector

ElmColorselector *
elm_colorselector_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Colorselector		PACKAGE = ElmColorselectorPtr     PREFIX = elm_colorselector_

void
elm_colorselector_color_set(obj,r,g,b,a)
	ElmColorselector *obj
	int r
	int g
	int b
	int a


void
elm_colorselector_color_get(obj,OUTLIST r, OUTLIST g, OUTLIST b, OUTLIST a)
	const ElmColorselector *obj
	int r
	int g
	int b
	int a


void
elm_colorselector_palette_name_set(obj,palette_name)
	ElmColorselector *obj
	const char *palette_name


char *
elm_colorselector_palette_name_get(obj)
	const ElmColorselector *obj


void
elm_colorselector_mode_set(obj,mode)
	ElmColorselector *obj
	int mode


int
elm_colorselector_mode_get(obj)
	const ElmColorselector *obj


EinaList *
elm_colorselector_palette_items_get(obj)
	const ElmColorselector *obj


ElmColorselectorPaletteItem *
elm_colorselector_palette_selected_item_get(obj)
	const ElmColorselector *obj


ElmColorselectorPaletteItem *
elm_colorselector_palette_color_add(obj,r,g,b,a)
	ElmColorselector *obj
	int r
	int g
	int b
	int a


void
elm_colorselector_palette_clear(obj)
	ElmColorselector *obj
