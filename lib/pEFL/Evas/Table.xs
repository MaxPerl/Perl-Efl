#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>

typedef Evas_Canvas EvasCanvas;
typedef Evas_Table EvasTable;
typedef Evas_Object EvasObject;

MODULE = pEFL::Evas::Table		PACKAGE = pEFL::Evas::Table

EvasTable *
evas_object_table_add(e)
	EvasCanvas *e
	
EvasTable *
evas_object_table_add_to(obj)
	EvasTable *obj

MODULE = pEFL::Evas::Table		PACKAGE = EvasTablePtr     PREFIX = evas_object_table_

void
evas_object_table_homogeneous_set(obj, homogeneous)
	EvasTable *obj
	int homogeneous
	
	
int
evas_object_table_homogeneous_get(obj)
	EvasTable *obj

void
evas_object_table_align_set(obj, horizontal, vertical)
	EvasTable *obj
	double horizontal
	double vertical
	
void
evas_object_table_align_get(obj, OUTLIST horizontal, OUTLIST vertical)
	EvasTable *obj
	double horizontal
	double vertical
	
void
evas_object_table_padding_set(obj, horizontal, vertical)
	EvasTable *obj 
	int horizontal
	int vertical
	
void
evas_object_table_padding_get(obj, OUTLIST horizontal, OUTLIST vertical)
	EvasTable *obj 
	int horizontal
	int vertical
	
void
evas_object_table_col_row_size_get(obj, OUTLIST cols, OUTLIST rows)
	EvasTable *obj 
	int cols
	int rows
	

void
evas_object_table_clear(obj, clear)
	EvasTable *obj
	Eina_Bool clear
	

#Eina_Bool
#evas_object_table_pack_get(obj, child, OUTLIST col, OUTLIST row, OUTLIST colspan, OUTLIST rowspan)
#	EvasTable *obj
#	EvasObject *child
#	unsigned short col
#	unsigned short row
#	unsigned short colspan
#	unsigned short rowspan

Eina_Bool
evas_object_table_pack(obj, child, col, row, colspan, rowspan)
	EvasTable *obj
	EvasObject *child
	unsigned short col
	unsigned short row
	unsigned short colspan
	unsigned short rowspan
	
Eina_Bool
evas_object_table_unpack(obj, child)
	EvasTable *obj
	EvasObject *child

void
evas_object_table_mirrored_set(obj, mirrored)
	EvasTable *obj
	Eina_Bool mirrored

Eina_Bool
evas_object_table_mirrored_get(obj)
	EvasTable *obj
	
Eina_List *
evas_object_table_children_get (o)
	EvasObject *o
	
EvasObject *
evas_object_table_child_get(obj, col, row)
	EvasTable *obj
	unsigned short col
	unsigned short row
	
# Eina_Accessor * 	evas_object_table_accessor_new (const Evas_Table *obj)
# Eina_Iterator * 	evas_object_table_iterator_new (const Evas_Table *obj)