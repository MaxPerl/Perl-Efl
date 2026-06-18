#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Edje.h>

typedef Edje_Message_Int EdjeMessageInt;

MODULE = pEFL::Edje::Message::Int		PACKAGE = pEFL::Edje::Message::Int

EdjeMessageInt *
new(class,val)
	char *class
	int val
PREINIT:
	EdjeMessageInt *message;
CODE:
	if (items != 2) {
		Perl_croak(aTHX_ "Usage pEFL::Edje::Message::Int->new($val)\n");
	}
	New(0, message, 1, EdjeMessageInt);	
	message->val = val;
	RETVAL = message;
OUTPUT:
	RETVAL

void
DESTROY(message) 
    EdjeMessageInt *message
CODE:
	/* Da wir oben New() nutzen, MÜSSEN wir hier via Safefree aufräumen,
	   wenn das in Perl erstellte Objekt gelöscht wird. */
	Safefree(message);

MODULE = pEFL::Edje::Message::Int		PACKAGE = EdjeMessageIntPtr

int
int(message)
    EdjeMessageInt *message
CODE:
    RETVAL = message->val;
OUTPUT:
    RETVAL
