#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>

// We need this typedef to bless the created list into the class ElmWinPtr
// This class is a child class of Efl::Elm::Win, which inherits from EvasListPtr
// see the @ISA's in Elm/Win.pm
// By this trick we get a wonderful perlish oo-interface :-)
typedef Elm_List_Item ElmListItem;
typedef Evas_Object EvasObject;


MODULE = Efl::Elm::ListItem		PACKAGE = ElmListItemPtr     PREFIX = elm_list_item_

void
elm_list_item_separator_set(obj,setting)
	ElmListItem *obj
	Eina_Bool setting
	
Eina_Bool
elm_list_item_separator_get(obj)
	ElmListItem *obj
	
void
elm_list_item_selected_set(obj,selected)
	ElmListItem *obj
	Eina_Bool selected
	
Eina_Bool
elm_list_item_selected_get(obj)
	ElmListItem *obj
	
EvasObject *
elm_list_item_object_get(obj)
	ElmListItem *obj

# eigtl. ElmWidgetItem; besser noch ElmListItem???
ElmListItem *
elm_list_item_prev(obj)
	ElmListItem *obj
	
ElmListItem *
elm_list_item_next(obj)
	ElmListItem *obj
	
void
elm_list_item_show(obj)
	ElmListItem *obj
	
void
elm_list_item_bring_in(obj)
	ElmListItem *obj
