#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Ecore.h>

typedef Ecore_Event EcoreEvent;

MODULE = Efl::Ecore::Event		PACKAGE = Efl::Ecore::Event   PREFIX = ecore_event_

int
ecore_event_init()

int
ecore_event_shutdown()

EcoreEvent *
ecore_event_add(type,ev,func_free,data)
	int type
	void *ev
	SV *func_free
	void *data

int
ecore_event_type_new()

#void
#ecore_event_type_flush_internal(type,...)
#	int type
#	 ...

int
ecore_event_current_type_get()

#void *
#ecore_event_current_event_get()

MODULE = Efl::Ecore::Event		PACKAGE = EcoreEventPtr   PREFIX = ecore_event_

void *
ecore_event_del(event)
	EcoreEvent *event

