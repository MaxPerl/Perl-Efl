#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Ecore.h>
#include <Ecore_Input.h>

typedef Ecore_Event_Mouse_Button EcoreEventMouseButton;


MODULE = Efl::Ecore::Event::MouseButton		PACKAGE = EcoreEventMouseButtonPtr

void
window(event)
	EcoreEventMouseButton *event
CODE:
	printf("the window member of the event struct is at the moment not supported in Perl. Sorry :-( \n");

void
root_window(event)
	EcoreEventMouseButton *event
CODE:
	printf("the root_window member of the event struct is at the moment not supported in Perl. Sorry :-( \n");

void
event_window(event)
	EcoreEventMouseButton *event
CODE:
	printf("the event_window member of the event struct is at the moment not supported in Perl. Sorry :-( \n");


unsigned int
timestamp(event)
    EcoreEventMouseButton *event
CODE:
    RETVAL = event->timestamp;
OUTPUT:
    RETVAL
    
    
int
modifiers(event)
	EcoreEventMouseButton *event
CODE:
    RETVAL = event->modifiers;
OUTPUT:
    RETVAL

unsigned int
buttons(event)
    EcoreEventMouseButton *event
CODE:
    RETVAL = event->buttons;
OUTPUT:
    RETVAL
    

unsigned int
double_click(event)
    EcoreEventMouseButton *event
CODE:
    RETVAL = event->double_click;
OUTPUT:
    RETVAL
    

unsigned int
triple_click(event)
    EcoreEventMouseButton *event
CODE:
    RETVAL = event->triple_click;
OUTPUT:
    RETVAL

int
same_screen(event)
    EcoreEventMouseButton *event
CODE:
    RETVAL = event->same_screen;
OUTPUT:
    RETVAL  


int
x(event)
    EcoreEventMouseButton *event
CODE:
    RETVAL = event->x;
OUTPUT:
    RETVAL

int
y(event)
    EcoreEventMouseButton *event
CODE:
    RETVAL = event->y;
OUTPUT:
    RETVAL
  
    
HV *
root(event)
    EcoreEventMouseButton *event
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
	EcoreEventMouseButton *event
CODE:
	printf("the multi member of the event struct is at the moment not supported in Perl. Sorry :-( \n");