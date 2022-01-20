#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>

// We need this typedef to bless the created object into the class ElmListPtr
// This class is a child class of Efl::Elm::List, which inherits from EvasObjectPtr
// see the @ISA's in Elm/List.pm
// By this trick we get a wonderful perlish oo-interface :-)
typedef Evas_Object ElmList;
typedef Evas_Object EvasObject;
typedef Elm_Widget_Item ElmWidgetItem;
typedef Elm_List_Item ElmListItem;
typedef Eina_List EinaList;

MODULE = Efl::Elm::List		PACKAGE = Efl::Elm::List

ElmList * 
elm_list_add(EvasObject *parent)

MODULE = Efl::Elm::List		PACKAGE = ElmListPtr     PREFIX = elm_list_

void
elm_list_horizontal_set(obj,horizontal)
	ElmList *obj
	Eina_Bool horizontal
	
Eina_Bool
elm_list_horizontal_get(obj)
	ElmList *obj
	
void
elm_list_select_mode_set(obj,mode)
	ElmList *obj
	int mode
	
int
elm_list_select_mode_get(obj)
	ElmList *obj

void
elm_list_focus_on_selection_set(obj,enabled)
	ElmList *obj
	Eina_Bool enabled

Eina_Bool
elm_list_focus_on_selection_get(obj)
	ElmList *obj
	
void
elm_list_multi_select_set(obj,multi)
	ElmList *obj
	Eina_Bool multi
	
Eina_Bool
elm_list_multi_select_get(obj)
	ElmList *obj
	
void
elm_list_multi_select_mode_set(obj,mode)
	ElmList *obj
	int mode

int
elm_list_multi_select_mode_get(obj)
	ElmList *obj
	
void
elm_list_mode_set(obj,mode)
	ElmList *obj
	int mode
	
int
elm_list_mode_get(obj)
	ElmList *obj

# TODO ElmWidgetItem must be ElmWidgetItem, but seems to be the same...

ElmListItem *
elm_list_selected_item_get(obj)
	ElmList *obj
	
EinaList *
elm_list_items_get(obj)
	ElmList *obj
	
ElmListItem *
elm_list_first_item_get(obj)
	ElmList *obj

EinaList *
elm_list_selected_items_get(obj)
	ElmList *obj
	
ElmListItem *
elm_list_last_item_get(obj)
	ElmList *obj

# func = Evas_Smart_Cb (without *); not supported at the moment
	
ElmListItem *
elm_list_item_insert_before(obj,before,label,icon,end,func,data)
	ElmList *obj
	ElmListItem *before
	char *label
	EvasObject *icon 
	EvasObject *end  
	SV* func
	void *data
CODE:
if (SvOK(func) || data) {
        fprintf(stderr, "registering callback function is not supported at the moment \n");
    }
    
    RETVAL = elm_list_item_insert_before(obj,before,label,icon, end,(Evas_Smart_Cb) NULL ,NULL);
OUTPUT:
    RETVAL
	
void
elm_list_go(obj)
	ElmList *obj
	
ElmListItem *
elm_list_item_insert_after(obj,after,label,icon,end,func,data)
	ElmList *obj
	ElmListItem *after
	char *label
	EvasObject *icon 
	EvasObject *end  
	SV* func
	void *data
CODE:
if (SvOK(func) || data) {
        fprintf(stderr, "registering callback function is not supported at the moment \n");
    }
    
    RETVAL = elm_list_item_insert_after(obj,after,label,icon, end,(Evas_Smart_Cb) NULL ,NULL);
OUTPUT:
    RETVAL
	
ElmListItem *
elm_list_at_xy_item_get(obj,x,y,OUTLIST posret)
	ElmList *obj
	int x
	int y
	int posret
	
ElmListItem *
elm_list_item_append(obj,label,icon,end,func,data)
	ElmList *obj
	char *label
	EvasObject *icon
	EvasObject *end
	SV* func
	void *data
CODE:
    if (SvOK(func) || data) {
        fprintf(stderr, "registering callback function is not supported at the moment \n");
    }
    
    RETVAL = elm_list_item_append(obj,label,icon, end,(Evas_Smart_Cb) NULL ,NULL);
OUTPUT:
    RETVAL
    
	
ElmListItem *
elm_list_item_prepend(obj,label,icon,end,func,data)
	ElmList *obj
	char *label
	EvasObject *icon 
	EvasObject *end  
	SV* func
	void *data
CODE:
    if (SvOK(func) || data) {
        fprintf(stderr, "registering callback function is not supported at the moment \n");
    }
    
    RETVAL = elm_list_item_prepend(obj,label,icon, end,(Evas_Smart_Cb) NULL ,NULL);
OUTPUT:
    RETVAL
	
void
elm_list_clear(obj)
	ElmList *obj
	
# not needed. Use perl instead 
# ElmWidgetItem *
# elm_list_item_sorted_insert(obj,label,icon,end,func,data,cmp_func)
#   ElmList *obj
#	char *label
#	EvasObject *icon //Efl_Canvas_Object
#	EvasObject *end  //Efl_Canvas_Object
#	Evas_Smart_Cb func
#	void *data
#	Eina_Compare_Cb cmp_func
#
