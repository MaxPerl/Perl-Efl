#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Eina.h>

#include "const-eina-c.inc"

MODULE = Efl::Eina		PACKAGE = Efl::Eina		

INCLUDE: const-eina-xs.inc