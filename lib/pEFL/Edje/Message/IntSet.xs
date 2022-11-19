#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Edje.h>

typedef Edje_Message_Int_Set EdjeMessageIntSet;

MODULE = pEFL::Edje::Message::IntSet		PACKAGE = pEFL::Edje::Message::IntSet

EdjeMessageIntSet *
_new(class,count, val_arr)
	char *class
	int count
	AV *val_arr
PREINIT:
	EdjeMessageIntSet *message;
	int *val;
	int index;
CODE:
	New(0,val,count,int);
	New(0,message,1,EdjeMessageIntSet);
	for (index = 0; index <= count; index ++) {
		val[index] = SvIV( *av_fetch(val_arr,index,0) );
	}
	message->count = count+1;
	Move(val,message->val,count,int);
	RETVAL = message;
OUTPUT:
	RETVAL

MODULE = pEFL::Edje::Message::IntSet		PACKAGE = EdjeMessageIntSetPtr

int
count(message)
    EdjeMessageIntSet *message
CODE:
    RETVAL = message->count;
OUTPUT:
    RETVAL
    
void
val(message)
    EdjeMessageIntSet *message
PREINIT:
	int count;
	int *vals;
	int index;
PPCODE:
    count = message->count;
    vals = message->val;
    
    EXTEND(SP,count);
    for (index = 0; index <=count; index ++) {
    	PUSHs( sv_2mortal( newSViv( vals[index] ) ));
	}
	
void
DESTROY(message) 
    EdjeMessageIntSet *message
CODE:
	//printf("Freeing Message_Int_Set\n");
	Safefree(message);