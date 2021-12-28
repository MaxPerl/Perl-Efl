#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"



typedef struct _Efl_Time {
    int tm_sec;
    int tm_min;
    int tm_hour;
    int tm_mday;
    int tm_mon;
    int tm_year;
    int tm_wday;
    int tm_yday;
    int tm_isdst;
} EflTime;


MODULE = Efl::Time		PACKAGE = Efl::Time

MODULE = Efl::Time		PACKAGE = EflTimePtr

int
tm_sec(time)
    EflTime *time
CODE:
    RETVAL = time->tm_sec;
OUTPUT:
    RETVAL

int
tm_min(time)
    EflTime *time
CODE:
    RETVAL = time->tm_min;
OUTPUT:
    RETVAL
    
int
tm_hour(time)
    EflTime *time
CODE:
    RETVAL = time->tm_hour;
OUTPUT:
    RETVAL
    
int
tm_mday(time)
    EflTime *time
CODE:
    RETVAL = time->tm_mday;
OUTPUT:
    RETVAL
    
int
tm_mon(time)
    EflTime *time
CODE:
    RETVAL = time->tm_mon;
OUTPUT:
    RETVAL
    
int
tm_year(time)
    EflTime *time
CODE:
    RETVAL = time->tm_year;
OUTPUT:
    RETVAL
    
int
tm_wday(time)
    EflTime *time
CODE:
    RETVAL = time->tm_wday;
OUTPUT:
    RETVAL
    
int
tm_yday(time)
    EflTime *time
CODE:
    RETVAL = time->tm_yday;
OUTPUT:
    RETVAL
    
int
tm_isdst(time)
    EflTime *time
CODE:
    RETVAL = time->tm_isdst;
OUTPUT:
    RETVAL
