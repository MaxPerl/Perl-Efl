#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>

typedef Evas_Object_Box_Option EvasBoxOption;
typedef Evas_Object EvasObject;

MODULE = pEFL::Evas::BoxOption		PACKAGE = EvasBoxOptionPtr

EvasObject *
obj(opt)
	EvasBoxOption *opt
CODE:
    RETVAL = opt->obj;
OUTPUT:
    RETVAL

Eina_Bool
max_reached(opt)
    EvasBoxOption *opt
CODE:
    RETVAL = opt->max_reached;
OUTPUT:
    RETVAL

Eina_Bool
min_reached(opt)
    EvasBoxOption *opt
CODE:
    RETVAL = opt->min_reached;
OUTPUT:
    RETVAL
    
Evas_Coord
alloc_size(opt)
    EvasBoxOption *opt
CODE:
    RETVAL = opt->alloc_size;
OUTPUT:
    RETVAL