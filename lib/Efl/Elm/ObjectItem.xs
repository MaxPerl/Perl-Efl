#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>


typedef Elm_Object_Item ElmObjectItem;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::ObjectItem		PACKAGE = ElmObjectItemPtr     PREFIX = elm_object_item_

# TODO: Implement all macros of elm_object_item.h
char *
elm_object_item_text_get(it)
    ElmObjectItem *it

    
# void *
# elm_object_item_data_get(it)
#	ElmObjectItem *it
	

# void
# elm_object_item_data_set(it,data)
#	ElmObjectItem *it
#	void *data
	
	
void
elm_object_item_del(obj)
	ElmObjectItem *obj


# TODO: Perhaps connect data on Perl side?
# void
# elm_object_item_data_set(it,data)
#    ElmObjectItem *it 
#    HV *data
# CODE:
#    _saved_object_data *sd = NULL;
#    sd = (_saved_object_data *)malloc(sizeof(_saved_object_data));
#    memset(sd, '\0', sizeof(_saved_object_data));
#    sd->perldata = newRV_inc((SV*)data);
#    elm_object_item_data_set(it,sd);
    

# HV*
# elm_object_item_data_get(it)
#    ElmObjectItem *it
# CODE:
#    _saved_object_data *sd  = NULL;
#    sd = elm_object_item_data_get(it);
#    RETVAL = SvRV(sd->perldata);
# OUTPUT:
#    RETVAL

void
elm_object_item_part_content_set(obj,part,content)
	ElmObjectItem *obj
	const char *part
	EvasObject *content


EvasObject *
elm_object_item_part_content_get(obj,part)
	ElmObjectItem *obj
	const char *part
