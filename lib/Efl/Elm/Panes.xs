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
typedef Evas_Object ElmPanes;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Panes		PACKAGE = Efl::Elm::Panes     PREFIX = elm_panes_

ElmPanes * 
elm_panes_add(EvasObject *parent)

MODULE = Efl::Elm::Panes		PACKAGE = ElmPanesPtr     PREFIX = elm_panes_

void
elm_panes_horizontal_set(obj,horizontal)
	ElmPanes *obj
	Eina_Bool horizontal
	
Eina_Bool
elm_panes_horizontal_get(obj)
	ElmPanes *obj
	
void
elm_panes_content_left_min_size_set(obj,size)
	ElmPanes *obj
	int size
	
int
elm_panes_content_left_min_size_get(obj)
	ElmPanes *obj
	
void
elm_panes_content_right_min_size_set(obj,size)
	ElmPanes *obj
	int size
	
int
elm_panes_content_right_min_size_get(obj)
	ElmPanes *obj

void
elm_panes_content_right_size_set(obj,size)
	ElmPanes *obj
	double size
	
double
elm_panes_content_right_size_get(obj)
	ElmPanes *obj
	
void
elm_panes_content_left_size_set(obj,size)
	ElmPanes *obj
	double size
	
double
elm_panes_content_left_size_get(obj)
	ElmPanes *obj
	
void
elm_panes_content_left_min_relative_size_set(obj,size)
	ElmPanes *obj
	double size
	
double
elm_panes_content_left_min_relative_size_get(obj)
	ElmPanes *obj
	
void
elm_panes_content_right_min_relative_size_set(obj,size)
	ElmPanes *obj
	double size
	
	
double
elm_panes_content_right_min_relative_size_get(obj)
	ElmPanes *obj
	
void 
elm_panes_fixed_set(obj,fixed)
    ElmPanes *obj
    Eina_Bool fixed
    
Eina_Bool
elm_panes_fixed_get(obj)
    ElmPanes *obj
