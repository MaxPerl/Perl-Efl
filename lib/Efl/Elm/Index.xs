#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>

#include "PLSide.h"

// We need this typedef to bless the created widget into the right class
// By this trick we get a wonderful perlish oo-interface :-)
typedef Evas_Object ElmIndex;
typedef Elm_Index_Item ElmIndexItem;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Index		PACKAGE = Efl::Elm::Index
ElmIndex *
elm_index_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Index		PACKAGE = ElmIndexPtr     PREFIX = elm_index_

void
elm_index_horizontal_set(obj,horizontal)
	ElmIndex *obj
	Eina_Bool horizontal


Eina_Bool
elm_index_horizontal_get(obj)
	ElmIndex *obj

void
elm_index_autohide_disabled_set(obj,disabled)
	ElmIndex *obj
	Eina_Bool disabled


Eina_Bool
elm_index_autohide_disabled_get(obj)
	ElmIndex *obj


void
elm_index_omit_enabled_set(obj,enabled)
	ElmIndex *obj
	Eina_Bool enabled


Eina_Bool
elm_index_omit_enabled_get(obj)
	ElmIndex *obj


void
elm_index_standard_priority_set(obj,priority)
	ElmIndex *obj
	int priority


int
elm_index_standard_priority_get(obj)
	ElmIndex *obj


void
elm_index_delay_change_time_set(obj,dtime)
	ElmIndex *obj
	double dtime


double
elm_index_delay_change_time_get(obj)
	ElmIndex *obj


void
elm_index_indicator_disabled_set(obj,disabled)
	ElmIndex *obj
	Eina_Bool disabled


Eina_Bool
elm_index_indicator_disabled_get(obj)
	ElmIndex *obj


void
elm_index_item_level_set(obj,level)
	ElmIndex *obj
	int level


int
elm_index_item_level_get(obj)
	ElmIndex *obj


void
elm_index_level_go(obj,level)
	ElmIndex *obj
	int level


ElmIndexItem *
_elm_index_item_prepend(pobj,letter,id)
	SV *pobj
	const char *letter
	int id
PREINIT:
    _perl_gendata *data;
    ElmIndex *obj;
    IV tmp;
CODE:
    // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmIndex*,tmp);
    
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_index_item_prepend(obj,letter,call_perl_gen_item_selected, data);
OUTPUT:
    RETVAL


void
elm_index_item_clear(obj)
	ElmIndex *obj


ElmIndexItem *
_elm_index_item_insert_after(pobj,after,letter,id)
	SV *pobj
	ElmIndexItem *after
	const char *letter
	int id
PREINIT:
    _perl_gendata *data;
    ElmIndex *obj;
    IV tmp;
CODE:
   // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmIndex*,tmp);
    
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_index_item_insert_after(obj,after,letter,call_perl_gen_item_selected, data);
OUTPUT:
    RETVAL


ElmIndexItem *
elm_index_item_find(obj,data)
	ElmIndex *obj
	void *data


ElmIndexItem *
_elm_index_item_insert_before(pobj,before,letter,id)
	SV *pobj
	ElmIndexItem *before
	const char *letter
	int id
PREINIT:
    _perl_gendata *data;
    ElmIndex *obj;
    IV tmp;
CODE:
   // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmIndex*,tmp);
    
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_index_item_insert_before(obj,before,letter,call_perl_gen_item_selected, data);
OUTPUT:
    RETVAL


ElmIndexItem *
_elm_index_item_append(pobj,letter,id)
	SV *pobj
	const char *letter
	int id
PREINIT:
    _perl_gendata *data;
    ElmIndex *obj;
    IV tmp;
CODE:
    // Fetch the c struct from the perl SV
    // stolen from the typemap of T_PTROBJ
    tmp = SvIV((SV*)SvRV(pobj));
    obj = INT2PTR(ElmIndex*,tmp);
    
    // Save C struct with necessary infos to link to perl side
    data = perl_save_gen_cb(aTHX_ pobj, NULL, id);
    RETVAL = elm_index_item_append(obj,letter,call_perl_gen_item_selected, data);
OUTPUT:
    RETVAL


ElmIndexItem *
elm_index_selected_item_get(obj,level)
	ElmIndex *obj
	int level


# ElmIndexItem *
# elm_index_item_sorted_insert(obj,letter,func,data,cmp_func,cmp_data_func)
#	ElmIndex *obj
#	const char *letter
#	SV* func
#	void *data
#	Eina_Compare_Cb cmp_func
#	Eina_Compare_Cb cmp_data_func


