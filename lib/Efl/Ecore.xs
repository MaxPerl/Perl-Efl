#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Ecore.h>

#include "const-ecore-c.inc"


MODULE = Efl::Ecore		PACKAGE = Efl::Ecore

INCLUDE: const-ecore-xs.inc
