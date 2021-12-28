#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"


MODULE = Efl		PACKAGE = Efl		

char*
ev_info2s(ev_info)
    SV *ev_info
PREINIT:
    void *event_info;
    IV adress;
CODE:
{
        adress = SvIV(ev_info);
        event_info = INT2PTR(void*,adress);
        RETVAL = (char*) event_info;
}
OUTPUT:
    RETVAL
