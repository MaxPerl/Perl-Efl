#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>

typedef Evas_Canvas EvasCanvas;
typedef Evas_Grid EvasGrid;
typedef Evas_Object EvasObject;

MODULE = pEFL::Evas::Grid		PACKAGE = pEFL::Evas::Grid

EvasGrid *
evas_object_grid_add(e)
	EvasCanvas *e
	
EvasGrid *
evas_object_grid_add_to(obj)
	EvasGrid *obj

MODULE = pEFL::Evas::Grid		PACKAGE = EvasGridPtr     PREFIX = evas_object_grid_

void
evas_object_grid_size_set(obj, w, h)
	EvasGrid *obj
	int w
	int h
	
void
evas_object_grid_size_get(obj, OUTLIST w, OUTLIST h)
	EvasGrid *obj
	int w
	int h

void
evas_object_grid_clear(obj, clear)
	EvasGrid *obj
	Eina_Bool clear
	

#Eina_Bool
#evas_object_grid_pack_get(obj, child, OUTLIST x, OUTLIST y, OUTLIST w, OUTLIST h)
#	EvasGrid *obj
#	EvasObject *child
#	unsigned short x
#	unsigned short y
#	unsigned short w
#	unsigned short h

Eina_Bool
evas_object_grid_pack(obj, child, x, y, w, h)
	EvasGrid *obj
	EvasObject *child
	int x
	int y
	int w
	int h
	
Eina_Bool
evas_object_grid_unpack(obj, child)
	EvasGrid *obj
	EvasObject *child

void
evas_object_grid_mirrored_set(obj, mirrored)
	EvasGrid *obj
	Eina_Bool mirrored

Eina_Bool
evas_object_grid_mirrored_get(obj)
	EvasGrid *obj
	
Eina_List *
evas_object_grid_children_get (o)
	EvasObject *o
	
void
evas_object_textgrid_font_source_set(obj, font_source)
	EvasObject *obj
	const char *font_source

const char *
evas_object_textgrid_font_source_get(obj)
	const EvasObject *obj

void
evas_object_textgrid_font_set (obj, font_name, font_size)
	EvasObject *obj
	const char *font_name
	int font_size

void
evas_object_textgrid_font_get (obj, OUTLIST font_name, OUTLIST font_size)
	const EvasObject *obj
	const char *font_name
	int font_size
	
# Eina_Accessor * 	evas_object_grid_accessor_new (const Evas_Grid *obj)

# Eina_Iterator * 	evas_object_grid_iterator_new (const Evas_Grid *obj)