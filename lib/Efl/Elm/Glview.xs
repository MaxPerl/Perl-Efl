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
typedef Elm_Glview ElmGLView;
typedef Evas_Object EvasObject;

MODULE = Efl::Elm::GLView		PACKAGE = Efl::Elm::GLView

ElmGLView *
elm_glview_add(parent)
    EvasObject *parent

MODULE = Efl::Elm::GLView		PACKAGE = ElmGLViewPtr     PREFIX = elm_glview_

ElmGLView *
elm_glview_version_add(parent,version)
	EvasObject *parent
	int version


void
elm_glview_changed_set(obj)
	ElmGLView *obj


void
elm_glview_size_get(obj,OUTLIST w, OUTLIST h)
	ElmGLView *obj
	int w
	int h


void
elm_glview_size_set(obj,w,h)
	ElmGLView *obj
	int w
	int h


# void
# elm_glview_init_func_set(obj,func)
#	ElmGLView *obj
#	Elm_GLView_Func_Cb func


# void
# elm_glview_del_func_set(obj,func)
#	ElmGLView *obj
# 	Elm_GLView_Func_Cb func


# void
# elm_glview_resize_func_set(obj,func)
#	ElmGLView *obj
#	Elm_GLView_Func_Cb func


# void
# elm_glview_render_func_set(obj,func)
#	ElmGLView *obj
#	Elm_GLView_Func_Cb func

Eina_Bool
elm_glview_resize_policy_set(obj,policy)
	ElmGLView *obj
	int policy


Eina_Bool
elm_glview_render_policy_set(obj,policy)
	ElmGLView *obj
	int policy


Eina_Bool
elm_glview_mode_set(obj,mode)
	ElmGLView *obj
	int mode


# Evas_GL_API *
# elm_glview_gl_api_get(obj)
#	ElmGLView *obj


# Evas_GL *
# elm_glview_evas_gl_get(obj)
#	ElmGLView *obj


int
elm_glview_rotation_get(obj)
	ElmGLView *obj
