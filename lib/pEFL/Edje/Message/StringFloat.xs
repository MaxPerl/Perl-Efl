#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Edje.h>

typedef Edje_Message_String_Float EdjeMessageStringFloat;

MODULE = pEFL::Edje::Message::StringFloat		PACKAGE = pEFL::Edje::Message::StringFloat

EdjeMessageStringFloat *
new(class,str_sv,val)
	char *class
	SV *str_sv
	double val
PREINIT:
	EdjeMessageStringFloat *message;
	char *string;
	STRLEN len;
CODE:
	if (items != 3) {
		Perl_croak(aTHX_ "Usage pEFL::Edje::Message::StringFloat->new($string, $val)\n");
	}
	New(0, message, 1, EdjeMessageStringFloat);	
	
	string = SvPV(str_sv, len);
	message->str = savepvn(string, len);

	message->val = val;
	RETVAL = message;
OUTPUT:
	RETVAL

void
DESTROY(message) 
    EdjeMessageStringFloat *message
CODE:
	if (message->str) {
		Safefree(message->str);
	}
	Safefree(message);

MODULE = pEFL::Edje::Message::StringFloat		PACKAGE = EdjeMessageStringFloatPtr

char*
str(message)
    EdjeMessageStringFloat *message
CODE:
    RETVAL = message->str;
OUTPUT:
    RETVAL
    

double
val(message)
    EdjeMessageStringFloat *message
CODE:
    RETVAL = message->val;
OUTPUT:
    RETVAL
