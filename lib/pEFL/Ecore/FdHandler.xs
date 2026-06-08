#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Ecore.h>

#include "PLSide.h"

typedef Ecore_Fd_Handler EcoreFdHandler;

MODULE = pEFL::Ecore::FdHandler		PACKAGE = pEFL::Ecore::FdHandler   PREFIX = ecore_main_fd_handler_


EcoreFdHandler *
_ecore_main_fd_handler_add(fd,func,flags,id)
    int fd
	SV *func
	int flags
	int id
CODE:
    // Das zeigt uns sofort, ob die Argumente vertauscht wurden!
    fprintf(stderr, "XS REGISTER: fd=%d, flags=%d, id=%d\n", fd, flags, id);
    RETVAL = ecore_main_fd_handler_add(fd,flags,call_perl_ecore_fd_cb,(void *) (intptr_t) id, NULL, NULL);
OUTPUT:
    RETVAL


MODULE = pEFL::Ecore::FdHandler		PACKAGE = EcoreFdHandlerPtr   PREFIX = ecore_main_fd_handler_

void *
ecore_main_fd_handler_del(fdhandler)
	EcoreFdHandler *fdhandler

int
ecore_main_fd_handler_fd_get(fdhandler)
	EcoreFdHandler *fdhandler

Eina_Bool
ecore_main_fd_handler_active_get(fdhandler, flags)
	EcoreFdHandler *fdhandler
	int flags
	
void
ecore_main_fd_handler_active_set(fdhandler, flags)
	EcoreFdHandler *fdhandler
	int flags