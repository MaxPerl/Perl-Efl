#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>

typedef Evas_Canvas EvasCanvas;
typedef Evas_Box EvasBox;
typedef Evas_Object EvasObject;
typedef Evas_Object_Box_Option EvasBoxOption;

static Evas_Object_Box_Layout layout_cbs[] = {
    NULL,  /* 0 = NONE → Fehler */
    evas_object_box_layout_horizontal,
    evas_object_box_layout_vertical,
    evas_object_box_layout_homogeneous_horizontal,
    evas_object_box_layout_homogeneous_vertical,
    evas_object_box_layout_homogeneous_max_size_horizontal,
    evas_object_box_layout_homogeneous_max_size_vertical,
    evas_object_box_layout_flow_horizontal,
    evas_object_box_layout_flow_vertical,
    evas_object_box_layout_stack,
};

MODULE = pEFL::Evas::Box		PACKAGE = pEFL::Evas::Box

EvasBox *
evas_object_box_add(e)
	EvasCanvas *e
	
EvasBox *
evas_object_box_add_to(obj)
	EvasBox *obj

MODULE = pEFL::Evas::Box		PACKAGE = EvasBoxPtr     PREFIX = evas_object_box_

void
evas_object_box_align_set(obj, horizontal, vertical)
	EvasBox *obj
	double horizontal
	double vertical
	
void
evas_object_box_align_get(obj, OUTLIST horizontal, OUTLIST vertical)
	EvasBox *obj
	double horizontal
	double vertical
	
void
evas_object_box_padding_set(obj, horizontal, vertical)
	EvasBox *obj 
	int horizontal
	int vertical
	
void
evas_object_box_padding_get(obj, OUTLIST horizontal, OUTLIST vertical)
	EvasBox *obj 
	int horizontal
	int vertical

void
evas_object_box_layout_set(obj, layout)
    EvasObject *obj
    IV layout
CODE:
	if (layout <= 0 || layout > 9) {
		croak("Invalid layout constant");
	}
	evas_object_box_layout_set(obj, layout_cbs[layout], NULL, NULL);

EvasBoxOption *
evas_object_box_insert_after(obj, child, reference)
	EvasBox *obj
	EvasObject *child
	const EvasObject *reference

Eina_Bool
evas_object_box_remove_all(obj, clear)
	EvasBox *obj
	Eina_Bool clear
	

EvasBoxOption *
evas_object_box_append(obj, child)
	EvasBox *obj
	EvasObject *child

int
evas_object_box_option_property_id_get(obj, name)
	EvasBox *obj
	char *name

EvasBoxOption *
evas_object_box_prepend(obj, child)
	EvasBox *obj
	EvasObject *child

Eina_Bool
evas_object_box_remove_at(obj, pos)
	EvasBox *obj
	unsigned int pos

EvasBoxOption *
evas_object_box_insert_before(obj, child, reference)
	EvasBox *obj
	EvasObject *child
	const EvasObject *reference

const char *
evas_object_box_option_property_name_get(obj, property)
	EvasBox *obj
	int property
	
#void evas_object_box_layout_homogeneous_horizontal(EvasBox *obj, EvasObject_Box_Data *priv, void *data)

EvasBoxOption *
evas_object_box_insert_at(obj, child, pos)
	EvasBox *obj
	EvasObject *child 
	unsigned int pos


Eina_Bool
evas_object_box_remove(obj, child)
	EvasBox *obj
	EvasObject *child

# not to implement: 
# Is for class extensions scenarios and inheritance purposes
# we don't support this 
# void 	evas_object_box_smart_set (EvasObject_Box_Api *api)	
# const EvasObject_Box_Api * 	evas_object_box_smart_class_get (void)

# EVAS_OBJECT_BOX_OPTION__
# Diese Funktionen spielen nur eine Rolle, wenn man ein eigenes Layout programmieren möchten, 
# das völlig neue Parameter benötigt (wie z.B. ein Grid-Layout, das pro Element spezifische 
# row- und col-Werte abfragen muss). Die Funktionen dienen als universelle Schnittstelle, 
# um zusätzliche Daten an ein Box-Kind zu heften.
#
# Eina_Bool 	evas_object_box_option_property_vget (const EvasObject *o, EvasObject_Box_Option *opt, int property, va_list args)
#Eina_Bool 	evas_object_box_option_property_vset (EvasObject *o, EvasObject_Box_Option *opt, int property, va_list args)
# Eina_Bool 	evas_object_box_option_property_set (EvasObject *o, EvasObject_Box_Option *opt, int property,...)
# Eina_Bool 	evas_object_box_option_property_get (const EvasObject *o, EvasObject_Box_Option *opt, int property,...)
#
# pEFL unterstützt derzeit keine Custom Layouts!!!! Daher sind diese Funktionen nicht implementiert

Eina_List *
evas_object_box_children_get (o)
	EvasObject *o