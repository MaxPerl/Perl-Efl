#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Ecore.h>
#include <Ecore_Input.h>

typedef Ecore_Event_Mouse_Move EcoreEventMouseMove;


MODULE = Efl::Ecore::Event::MouseWheel		PACKAGE = EcoreEventMouseMovePtr

void
window(event)
	EcoreEventMouseMove *event
CODE:
	printf("the window member of the event struct is at the moment not supported in Perl. Sorry :-( \n");

void
root_window(event)
	EcoreEventMouseMove *event
CODE:
	printf("the root_window member of the event struct is at the moment not supported in Perl. Sorry :-( \n");

void
event_window(event)
	EcoreEventMouseMove *event
CODE:
	printf("the event_window member of the event struct is at the moment not supported in Perl. Sorry :-( \n");


unsigned int
timestamp(event)
    EcoreEventMouseMove *event
CODE:
    RETVAL = event->timestamp;
OUTPUT:
    RETVAL
    
    
int
modifiers(event)
	EcoreEventMouseMove *event
CODE:
    RETVAL = event->modifiers;
OUTPUT:
    RETVAL

int
same_screen(event)
    EcoreEventMouseMove *event
CODE:
    RETVAL = event->same_screen;
OUTPUT:
    RETVAL  

    
int
x(event)
    EcoreEventMouseMove *event
CODE:
    RETVAL = event->x;
OUTPUT:
    RETVAL
  
int
y(event)
    EcoreEventMouseMove *event
CODE:
    RETVAL = event->y;
OUTPUT:
    RETVAL
    
    
HV *
root(event)
    EcoreEventMouseMove *event
PREINIT:
	HV *hash;
	int x;
	int y;
CODE:
	x = event->root.x;
	y = event->root.y;
	
	hash = (HV*) sv_2mortal( (SV*) newHV() );
	
	hv_store(hash,"x",1,newSViv(x),0);
	hv_store(hash,"y",1,newSViv(y),0);
    
    RETVAL = hash;
OUTPUT:
    RETVAL
    
    
void
multi(event)
	EcoreEventMouseMove *event
CODE:
	printf("the multi member of the event struct is at the moment not supported in Perl. Sorry :-( \n");