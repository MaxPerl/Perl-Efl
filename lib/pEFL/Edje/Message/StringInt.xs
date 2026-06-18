#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Edje.h>

typedef Edje_Message_String_Int EdjeMessageStringInt;

MODULE = pEFL::Edje::Message::StringInt		PACKAGE = pEFL::Edje::Message::StringInt

EdjeMessageStringInt *
new(class,str_sv,val)
	char *class
	SV *str_sv
	int val
PREINIT:
	EdjeMessageStringInt *message;
	char *string;
	STRLEN len;
CODE:
	if (items != 3) {
		Perl_croak(aTHX_ "Usage pEFL::Edje::Message::StringInt->new($string, $val)\n");
	}
	
	New(0, message,1,EdjeMessageStringInt);

	string = SvPV(str_sv,len);	
	message->str = savepvn(string,len);

	message->val = val;
	RETVAL = message;
OUTPUT:
	RETVAL

void
DESTROY(message) 
    EdjeMessageStringInt *message
CODE:
	if (message->str) {
		Safefree(message->str);
	}
	Safefree(message);

MODULE = pEFL::Edje::Message::StringInt		PACKAGE = EdjeMessageStringIntPtr

char*
str(message)
    EdjeMessageStringInt *message
CODE:
    RETVAL = message->str;
OUTPUT:
    RETVAL
