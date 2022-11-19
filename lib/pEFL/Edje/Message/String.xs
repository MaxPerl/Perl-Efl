#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Edje.h>

typedef Edje_Message_String EdjeMessageString;

MODULE = pEFL::Edje::Message::String		PACKAGE = pEFL::Edje::Message::String

EdjeMessageString *
new(class,str)
	char *class
	char *str
PREINIT:
	EdjeMessageString *message;
CODE:
	if (items != 2) {
		Perl_croak(aTHX_ "Usage pEFL::Edje::Message::String->new($string)\n");
	}
	message->str = str;
	RETVAL = message;
OUTPUT:
	RETVAL

MODULE = pEFL::Edje::Message::String		PACKAGE = EdjeMessageStringPtr

char*
str(message)
    EdjeMessageString *message
CODE:
    RETVAL = message->str;
OUTPUT:
    RETVAL