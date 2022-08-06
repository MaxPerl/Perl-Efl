#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Elementary.h>

// We need this typedef to bless the created object into the class ElmPlayerPtr
// This class is a child class of Efl::Elm::Player, which inherits from EvasObjectPtr
// see the @ISA's in Elm/Player.pm
// By this trick we get a wonderful perlish oo-interface :-)
typedef Evas_Object ElmPlayer;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::Player		PACKAGE = Efl::Elm::Player

ElmPlayer * 
elm_player_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::Player		PACKAGE = ElmPlayerPtr     PREFIX = elm_bg_

