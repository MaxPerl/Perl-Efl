#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>

typedef Evas_Event_Mouse_Out EvasEventMouseOut;
typedef Evas_Modifier EvasModifier;
typedef Evas_Lock EvasLock;
typedef Evas_Object EvasObject;


MODULE = pEFL::Evas::Event::MouseOut		PACKAGE = EvasEventMouseOutPtr

int
buttons(event)
    EvasEventMouseOut *event
CODE:
    RETVAL = event->buttons;
OUTPUT:
    RETVAL
    
    
HV *
output(event)
    EvasEventMouseOut *event
PREINIT:
	HV *hash;
	Evas_Point output;
	int x;
	int y;
CODE:
	output = event->output;
	x = output.x;
	y = output.y;
	
	hash = (HV*) sv_2mortal( (SV*) newHV() );
	
	hv_store(hash,"x",1,newSViv(x),0);
	hv_store(hash,"y",1,newSViv(y),0);
    
    RETVAL = hash;
OUTPUT:
    RETVAL


HV *
canvas(event)
    EvasEventMouseOut *event
PREINIT:
	HV *hash;
	Evas_Coord_Point canvas;
	int x;
	int y;
CODE:
	canvas = event->canvas;
	x = canvas.x;
	y = canvas.y;
	
	hash = (HV*) sv_2mortal( (SV*) newHV() );
	
	hv_store(hash,"x",1,newSViv(x),0);
	hv_store(hash,"y",1,newSViv(y),0);
    
    RETVAL = hash;
OUTPUT:
    RETVAL
 
 
EvasModifier*
modifiers(event)
	EvasEventMouseOut *event
CODE:
    RETVAL = event->modifiers;
OUTPUT:
    RETVAL
    
    
EvasLock*
locks(event)
	EvasEventMouseOut *event
CODE:
    RETVAL = event->locks;
OUTPUT:
    RETVAL
    

unsigned int
timestamp(event)
    EvasEventMouseOut *event
CODE:
    RETVAL = event->timestamp;
OUTPUT:
    RETVAL
    
    
int
event_flags(event)
    EvasEventMouseOut *event
CODE:
    RETVAL = event->event_flags;
OUTPUT:
    RETVAL

    
void
dev(event)
	EvasEventMouseOut *event
CODE:
	printf("the dev member of the event struct is at the moment not supported in Perl. Sorry :-( \n");

	
EvasObject *
event_src(event)
    EvasEventMouseOut *event
CODE:
    RETVAL = event->event_src;
OUTPUT:
    RETVAL

