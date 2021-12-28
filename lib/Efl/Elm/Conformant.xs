#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>

// We need this typedef to bless the created object into the class ElmWinPtr
// This class is a child class of Efl::Elm::Win, which inherits from EvasObjectPtr
// see the @ISA's in Elm/Win.pm
// By this trick we get a wonderful perlish oo-interface :-)
typedef Evas_Object ElmConformant;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Conformant		PACKAGE = Efl::Elm::Conformant

ElmConformant *
elm_conformant_add(EvasObject *parent)
