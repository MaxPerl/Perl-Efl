#define PERL_constant_NOTFOUND	1
#define PERL_constant_NOTDEF	2
#define PERL_constant_ISIV	3
#define PERL_constant_ISNO	4
#define PERL_constant_ISNV	5
#define PERL_constant_ISPV	6
#define PERL_constant_ISPVN	7
#define PERL_constant_ISSV	8
#define PERL_constant_ISUNDEF	9
#define PERL_constant_ISUV	10
#define PERL_constant_ISYES	11

#ifndef NVTYPE
typedef double NV; /* 5.6 and later define NVTYPE, and typedef NV to it.  */
#endif
#ifndef aTHX_
#define aTHX_ /* 5.6 or later define this for threading support.  */
#endif
#ifndef pTHX_
#define pTHX_ /* 5.6 or later define this for threading support.  */
#endif

static int
constant_21 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EVAS_BORDER_FILL_NONE EVAS_IMAGE_ORIENT_180 EVAS_IMAGE_ORIENT_270 */
  /* Offset 19 gives the best switch position.  */
  switch (name[19]) {
  case '7':
    if (memEQ(name, "EVAS_IMAGE_ORIENT_270", 21)) {
    /*                                  ^        */
      *iv_return = EVAS_IMAGE_ORIENT_270;
      return PERL_constant_ISIV;
    }
    break;
  case '8':
    if (memEQ(name, "EVAS_IMAGE_ORIENT_180", 21)) {
    /*                                  ^        */
      *iv_return = EVAS_IMAGE_ORIENT_180;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EVAS_BORDER_FILL_NONE", 21)) {
    /*                                  ^        */
      *iv_return = EVAS_BORDER_FILL_NONE;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_22 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EVAS_BORDER_FILL_SOLID EVAS_DISPLAY_MODE_NONE EVAS_FONT_HINTING_AUTO
     EVAS_FONT_HINTING_NONE EVAS_IMAGE_ORIENT_NONE EVAS_NATIVE_SURFACE_WL */
  /* Offset 5 gives the best switch position.  */
  switch (name[5]) {
  case 'B':
    if (memEQ(name, "EVAS_BORDER_FILL_SOLID", 22)) {
    /*                    ^                       */
      *iv_return = EVAS_BORDER_FILL_SOLID;
      return PERL_constant_ISIV;
    }
    break;
  case 'D':
    if (memEQ(name, "EVAS_DISPLAY_MODE_NONE", 22)) {
    /*                    ^                       */
      *iv_return = EVAS_DISPLAY_MODE_NONE;
      return PERL_constant_ISIV;
    }
    break;
  case 'F':
    if (memEQ(name, "EVAS_FONT_HINTING_AUTO", 22)) {
    /*                    ^                       */
      *iv_return = EVAS_FONT_HINTING_AUTO;
      return PERL_constant_ISIV;
    }
    if (memEQ(name, "EVAS_FONT_HINTING_NONE", 22)) {
    /*                    ^                       */
      *iv_return = EVAS_FONT_HINTING_NONE;
      return PERL_constant_ISIV;
    }
    break;
  case 'I':
    if (memEQ(name, "EVAS_IMAGE_ORIENT_NONE", 22)) {
    /*                    ^                       */
      *iv_return = EVAS_IMAGE_ORIENT_NONE;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EVAS_NATIVE_SURFACE_WL", 22)) {
    /*                    ^                       */
      *iv_return = EVAS_NATIVE_SURFACE_WL;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_23 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EVAS_LOAD_ERROR_GENERIC EVAS_NATIVE_SURFACE_TBM EVAS_NATIVE_SURFACE_X11
     EVAS_VIDEO_SURFACE_CLIP EVAS_VIDEO_SURFACE_MOVE */
  /* Offset 20 gives the best switch position.  */
  switch (name[20]) {
  case 'L':
    if (memEQ(name, "EVAS_VIDEO_SURFACE_CLIP", 23)) {
    /*                                   ^         */
      *iv_return = EVAS_VIDEO_SURFACE_CLIP;
      return PERL_constant_ISIV;
    }
    break;
  case 'O':
    if (memEQ(name, "EVAS_VIDEO_SURFACE_MOVE", 23)) {
    /*                                   ^         */
      *iv_return = EVAS_VIDEO_SURFACE_MOVE;
      return PERL_constant_ISIV;
    }
    break;
  case 'R':
    if (memEQ(name, "EVAS_LOAD_ERROR_GENERIC", 23)) {
    /*                                   ^         */
      *iv_return = EVAS_LOAD_ERROR_GENERIC;
      return PERL_constant_ISIV;
    }
    break;
  case 'T':
    if (memEQ(name, "EVAS_NATIVE_SURFACE_TBM", 23)) {
    /*                                   ^         */
      *iv_return = EVAS_NATIVE_SURFACE_TBM;
      return PERL_constant_ISIV;
    }
    break;
  case 'X':
    if (memEQ(name, "EVAS_NATIVE_SURFACE_X11", 23)) {
    /*                                   ^         */
      *iv_return = EVAS_NATIVE_SURFACE_X11;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_24 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EVAS_BORDER_FILL_DEFAULT EVAS_BUTTON_DOUBLE_CLICK EVAS_BUTTON_TRIPLE_CLICK
     EVAS_DISPLAY_MODE_EXPAND EVAS_IMAGE_FLIP_VERTICAL EVAS_NATIVE_SURFACE_NONE
     EVAS_VIDEO_SURFACE_BELOW */
  /* Offset 14 gives the best switch position.  */
  switch (name[14]) {
  case 'F':
    if (memEQ(name, "EVAS_VIDEO_SURFACE_BELOW", 24)) {
    /*                             ^                */
      *iv_return = EVAS_VIDEO_SURFACE_BELOW;
      return PERL_constant_ISIV;
    }
    break;
  case 'I':
    if (memEQ(name, "EVAS_BUTTON_TRIPLE_CLICK", 24)) {
    /*                             ^                */
      *iv_return = EVAS_BUTTON_TRIPLE_CLICK;
      return PERL_constant_ISIV;
    }
    break;
  case 'L':
    if (memEQ(name, "EVAS_BORDER_FILL_DEFAULT", 24)) {
    /*                             ^                */
      *iv_return = EVAS_BORDER_FILL_DEFAULT;
      return PERL_constant_ISIV;
    }
    break;
  case 'O':
    if (memEQ(name, "EVAS_DISPLAY_MODE_EXPAND", 24)) {
    /*                             ^                */
      *iv_return = EVAS_DISPLAY_MODE_EXPAND;
      return PERL_constant_ISIV;
    }
    break;
  case 'P':
    if (memEQ(name, "EVAS_IMAGE_FLIP_VERTICAL", 24)) {
    /*                             ^                */
      *iv_return = EVAS_IMAGE_FLIP_VERTICAL;
      return PERL_constant_ISIV;
    }
    break;
  case 'R':
    if (memEQ(name, "EVAS_NATIVE_SURFACE_NONE", 24)) {
    /*                             ^                */
      *iv_return = EVAS_NATIVE_SURFACE_NONE;
      return PERL_constant_ISIV;
    }
    break;
  case 'U':
    if (memEQ(name, "EVAS_BUTTON_DOUBLE_CLICK", 24)) {
    /*                             ^                */
      *iv_return = EVAS_BUTTON_DOUBLE_CLICK;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_25 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EVAS_IMAGE_FLIP_TRANSPOSE EVAS_LOAD_ERROR_CANCELLED
     EVAS_VIDEO_SURFACE_RESIZE */
  /* Offset 8 gives the best switch position.  */
  switch (name[8]) {
  case 'D':
    if (memEQ(name, "EVAS_LOAD_ERROR_CANCELLED", 25)) {
    /*                       ^                       */
      *iv_return = EVAS_LOAD_ERROR_CANCELLED;
      return PERL_constant_ISIV;
    }
    break;
  case 'E':
    if (memEQ(name, "EVAS_VIDEO_SURFACE_RESIZE", 25)) {
    /*                       ^                       */
      *iv_return = EVAS_VIDEO_SURFACE_RESIZE;
      return PERL_constant_ISIV;
    }
    break;
  case 'G':
    if (memEQ(name, "EVAS_IMAGE_FLIP_TRANSPOSE", 25)) {
    /*                       ^                       */
      *iv_return = EVAS_IMAGE_FLIP_TRANSPOSE;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_26 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EVAS_DISPLAY_MODE_COMPRESS EVAS_FONT_HINTING_BYTECODE
     EVAS_IMAGE_FLIP_HORIZONTAL EVAS_IMAGE_FLIP_TRANSVERSE
     EVAS_NATIVE_SURFACE_EVASGL EVAS_NATIVE_SURFACE_OPENGL */
  /* Offset 23 gives the best switch position.  */
  switch (name[23]) {
  case 'E':
    if (memEQ(name, "EVAS_DISPLAY_MODE_COMPRESS", 26)) {
    /*                                      ^         */
      *iv_return = EVAS_DISPLAY_MODE_COMPRESS;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EVAS_NATIVE_SURFACE_OPENGL", 26)) {
    /*                                      ^         */
      *iv_return = EVAS_NATIVE_SURFACE_OPENGL;
      return PERL_constant_ISIV;
    }
    break;
  case 'O':
    if (memEQ(name, "EVAS_FONT_HINTING_BYTECODE", 26)) {
    /*                                      ^         */
      *iv_return = EVAS_FONT_HINTING_BYTECODE;
      return PERL_constant_ISIV;
    }
    break;
  case 'R':
    if (memEQ(name, "EVAS_IMAGE_FLIP_TRANSVERSE", 26)) {
    /*                                      ^         */
      *iv_return = EVAS_IMAGE_FLIP_TRANSVERSE;
      return PERL_constant_ISIV;
    }
    break;
  case 'S':
    if (memEQ(name, "EVAS_NATIVE_SURFACE_EVASGL", 26)) {
    /*                                      ^         */
      *iv_return = EVAS_NATIVE_SURFACE_EVASGL;
      return PERL_constant_ISIV;
    }
    break;
  case 'T':
    if (memEQ(name, "EVAS_IMAGE_FLIP_HORIZONTAL", 26)) {
    /*                                      ^         */
      *iv_return = EVAS_IMAGE_FLIP_HORIZONTAL;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_30 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EVAS_IMAGE_CONTENT_HINT_STATIC EVAS_LOAD_ERROR_DOES_NOT_EXIST
     EVAS_LOAD_ERROR_UNKNOWN_FORMAT */
  /* Offset 17 gives the best switch position.  */
  switch (name[17]) {
  case 'N':
    if (memEQ(name, "EVAS_LOAD_ERROR_UNKNOWN_FORMAT", 30)) {
    /*                                ^                   */
      *iv_return = EVAS_LOAD_ERROR_UNKNOWN_FORMAT;
      return PERL_constant_ISIV;
    }
    break;
  case 'O':
    if (memEQ(name, "EVAS_LOAD_ERROR_DOES_NOT_EXIST", 30)) {
    /*                                ^                   */
      *iv_return = EVAS_LOAD_ERROR_DOES_NOT_EXIST;
      return PERL_constant_ISIV;
    }
    break;
  case 'T':
    if (memEQ(name, "EVAS_IMAGE_CONTENT_HINT_STATIC", 30)) {
    /*                                ^                   */
      *iv_return = EVAS_IMAGE_CONTENT_HINT_STATIC;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant (pTHX_ const char *name, STRLEN len, IV *iv_return) {
  /* Initially switch on the length of the name.  */
  /* When generated this function returned values for the list of names given
     in this section of perl code.  Rather than manually editing these functions
     to add or remove constants, which would result in this comment and section
     of code becoming inaccurate, we recommend that you edit this section of
     code, and use it to regenerate a new set of constant functions which you
     then use to replace the originals.

     Regenerate these constant functions by feeding this entire source file to
     perl -x

#!/usr/bin/perl -w
use ExtUtils::Constant qw (constant_types C_constant XS_constant);

my $types = {map {($_, 1)} qw(IV)};
my @names = (qw(),
            {name=>"EVAS_BORDER_FILL_DEFAULT", type=>"IV", macro=>"1"},
            {name=>"EVAS_BORDER_FILL_NONE", type=>"IV", macro=>"1"},
            {name=>"EVAS_BORDER_FILL_SOLID", type=>"IV", macro=>"1"},
            {name=>"EVAS_BUTTON_DOUBLE_CLICK", type=>"IV", macro=>"1"},
            {name=>"EVAS_BUTTON_TRIPLE_CLICK", type=>"IV", macro=>"1"},
            {name=>"EVAS_DISPLAY_MODE_COMPRESS", type=>"IV", macro=>"1"},
            {name=>"EVAS_DISPLAY_MODE_DONT_CHANGE", type=>"IV", macro=>"1"},
            {name=>"EVAS_DISPLAY_MODE_EXPAND", type=>"IV", macro=>"1"},
            {name=>"EVAS_DISPLAY_MODE_NONE", type=>"IV", macro=>"1"},
            {name=>"EVAS_FONT_HINTING_AUTO", type=>"IV", macro=>"1"},
            {name=>"EVAS_FONT_HINTING_BYTECODE", type=>"IV", macro=>"1"},
            {name=>"EVAS_FONT_HINTING_NONE", type=>"IV", macro=>"1"},
            {name=>"EVAS_HINT_EXPAND", type=>"IV", macro=>"1"},
            {name=>"EVAS_HINT_FILL", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_CONTENT_HINT_DYNAMIC", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_CONTENT_HINT_NONE", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_CONTENT_HINT_STATIC", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_FLIP_HORIZONTAL", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_FLIP_TRANSPOSE", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_FLIP_TRANSVERSE", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_FLIP_VERTICAL", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_ORIENT_0", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_ORIENT_180", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_ORIENT_270", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_ORIENT_90", type=>"IV", macro=>"1"},
            {name=>"EVAS_IMAGE_ORIENT_NONE", type=>"IV", macro=>"1"},
            {name=>"EVAS_LOAD_ERROR_CANCELLED", type=>"IV", macro=>"1"},
            {name=>"EVAS_LOAD_ERROR_CORRUPT_FILE", type=>"IV", macro=>"1"},
            {name=>"EVAS_LOAD_ERROR_DOES_NOT_EXIST", type=>"IV", macro=>"1"},
            {name=>"EVAS_LOAD_ERROR_GENERIC", type=>"IV", macro=>"1"},
            {name=>"EVAS_LOAD_ERROR_NONE", type=>"IV", macro=>"1"},
            {name=>"EVAS_LOAD_ERROR_PERMISSION_DENIED", type=>"IV", macro=>"1"},
            {name=>"EVAS_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED", type=>"IV", macro=>"1"},
            {name=>"EVAS_LOAD_ERROR_UNKNOWN_FORMAT", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_EVASGL", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_NONE", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_OPENGL", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_STATUS_PLANE_ASSIGN", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_STATUS_PLANE_RELEASE", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_STATUS_SCANOUT_OFF", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_STATUS_SCANOUT_ON", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_TBM", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_WL", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_WL_DMABUF", type=>"IV", macro=>"1"},
            {name=>"EVAS_NATIVE_SURFACE_X11", type=>"IV", macro=>"1"},
            {name=>"EVAS_RENDER_BLEND", type=>"IV", macro=>"1"},
            {name=>"EVAS_RENDER_COPY", type=>"IV", macro=>"1"},
            {name=>"EVAS_VIDEO_SURFACE_BELOW", type=>"IV", macro=>"1"},
            {name=>"EVAS_VIDEO_SURFACE_CLIP", type=>"IV", macro=>"1"},
            {name=>"EVAS_VIDEO_SURFACE_IGNORE_WINDOW", type=>"IV", macro=>"1"},
            {name=>"EVAS_VIDEO_SURFACE_MOVE", type=>"IV", macro=>"1"},
            {name=>"EVAS_VIDEO_SURFACE_RESIZE", type=>"IV", macro=>"1"},
            {name=>"EVAS_VIDEO_SURFACE_STACKING_CHECK", type=>"IV", macro=>"1"});

print constant_types(), "\n"; # macro defs
foreach (C_constant ("Efl::Evas", 'constant', 'IV', $types, undef, 3, @names) ) {
    print $_, "\n"; # C constant subs
}
print "\n#### XS Section:\n";
print XS_constant ("Efl::Evas", $types);
__END__
   */

  switch (len) {
  case 14:
    if (memEQ(name, "EVAS_HINT_FILL", 14)) {
      *iv_return = EVAS_HINT_FILL;
      return PERL_constant_ISIV;
    }
    break;
  case 16:
    /* Names all of length 16.  */
    /* EVAS_HINT_EXPAND EVAS_RENDER_COPY */
    /* Offset 14 gives the best switch position.  */
    switch (name[14]) {
    case 'N':
      if (memEQ(name, "EVAS_HINT_EXPAND", 16)) {
      /*                             ^        */
        *iv_return = EVAS_HINT_EXPAND;
        return PERL_constant_ISIV;
      }
      break;
    case 'P':
      if (memEQ(name, "EVAS_RENDER_COPY", 16)) {
      /*                             ^        */
        *iv_return = EVAS_RENDER_COPY;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 17:
    if (memEQ(name, "EVAS_RENDER_BLEND", 17)) {
      *iv_return = EVAS_RENDER_BLEND;
      return PERL_constant_ISIV;
    }
    break;
  case 19:
    if (memEQ(name, "EVAS_IMAGE_ORIENT_0", 19)) {
      *iv_return = EVAS_IMAGE_ORIENT_0;
      return PERL_constant_ISIV;
    }
    break;
  case 20:
    /* Names all of length 20.  */
    /* EVAS_IMAGE_ORIENT_90 EVAS_LOAD_ERROR_NONE */
    /* Offset 6 gives the best switch position.  */
    switch (name[6]) {
    case 'M':
      if (memEQ(name, "EVAS_IMAGE_ORIENT_90", 20)) {
      /*                     ^                    */
        *iv_return = EVAS_IMAGE_ORIENT_90;
        return PERL_constant_ISIV;
      }
      break;
    case 'O':
      if (memEQ(name, "EVAS_LOAD_ERROR_NONE", 20)) {
      /*                     ^                    */
        *iv_return = EVAS_LOAD_ERROR_NONE;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 21:
    return constant_21 (aTHX_ name, iv_return);
    break;
  case 22:
    return constant_22 (aTHX_ name, iv_return);
    break;
  case 23:
    return constant_23 (aTHX_ name, iv_return);
    break;
  case 24:
    return constant_24 (aTHX_ name, iv_return);
    break;
  case 25:
    return constant_25 (aTHX_ name, iv_return);
    break;
  case 26:
    return constant_26 (aTHX_ name, iv_return);
    break;
  case 28:
    /* Names all of length 28.  */
    /* EVAS_IMAGE_CONTENT_HINT_NONE EVAS_LOAD_ERROR_CORRUPT_FILE */
    /* Offset 13 gives the best switch position.  */
    switch (name[13]) {
    case 'N':
      if (memEQ(name, "EVAS_IMAGE_CONTENT_HINT_NONE", 28)) {
      /*                            ^                     */
        *iv_return = EVAS_IMAGE_CONTENT_HINT_NONE;
        return PERL_constant_ISIV;
      }
      break;
    case 'O':
      if (memEQ(name, "EVAS_LOAD_ERROR_CORRUPT_FILE", 28)) {
      /*                            ^                     */
        *iv_return = EVAS_LOAD_ERROR_CORRUPT_FILE;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 29:
    /* Names all of length 29.  */
    /* EVAS_DISPLAY_MODE_DONT_CHANGE EVAS_NATIVE_SURFACE_WL_DMABUF */
    /* Offset 28 gives the best switch position.  */
    switch (name[28]) {
    case 'E':
      if (memEQ(name, "EVAS_DISPLAY_MODE_DONT_CHANG", 28)) {
      /*                                           E      */
        *iv_return = EVAS_DISPLAY_MODE_DONT_CHANGE;
        return PERL_constant_ISIV;
      }
      break;
    case 'F':
      if (memEQ(name, "EVAS_NATIVE_SURFACE_WL_DMABU", 28)) {
      /*                                           F      */
        *iv_return = EVAS_NATIVE_SURFACE_WL_DMABUF;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 30:
    return constant_30 (aTHX_ name, iv_return);
    break;
  case 31:
    if (memEQ(name, "EVAS_IMAGE_CONTENT_HINT_DYNAMIC", 31)) {
      *iv_return = EVAS_IMAGE_CONTENT_HINT_DYNAMIC;
      return PERL_constant_ISIV;
    }
    break;
  case 32:
    if (memEQ(name, "EVAS_VIDEO_SURFACE_IGNORE_WINDOW", 32)) {
      *iv_return = EVAS_VIDEO_SURFACE_IGNORE_WINDOW;
      return PERL_constant_ISIV;
    }
    break;
  case 33:
    /* Names all of length 33.  */
    /* EVAS_LOAD_ERROR_PERMISSION_DENIED EVAS_VIDEO_SURFACE_STACKING_CHECK */
    /* Offset 8 gives the best switch position.  */
    switch (name[8]) {
    case 'D':
      if (memEQ(name, "EVAS_LOAD_ERROR_PERMISSION_DENIED", 33)) {
      /*                       ^                               */
        *iv_return = EVAS_LOAD_ERROR_PERMISSION_DENIED;
        return PERL_constant_ISIV;
      }
      break;
    case 'E':
      if (memEQ(name, "EVAS_VIDEO_SURFACE_STACKING_CHECK", 33)) {
      /*                       ^                               */
        *iv_return = EVAS_VIDEO_SURFACE_STACKING_CHECK;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 37:
    if (memEQ(name, "EVAS_NATIVE_SURFACE_STATUS_SCANOUT_ON", 37)) {
      *iv_return = EVAS_NATIVE_SURFACE_STATUS_SCANOUT_ON;
      return PERL_constant_ISIV;
    }
    break;
  case 38:
    if (memEQ(name, "EVAS_NATIVE_SURFACE_STATUS_SCANOUT_OFF", 38)) {
      *iv_return = EVAS_NATIVE_SURFACE_STATUS_SCANOUT_OFF;
      return PERL_constant_ISIV;
    }
    break;
  case 39:
    if (memEQ(name, "EVAS_NATIVE_SURFACE_STATUS_PLANE_ASSIGN", 39)) {
      *iv_return = EVAS_NATIVE_SURFACE_STATUS_PLANE_ASSIGN;
      return PERL_constant_ISIV;
    }
    break;
  case 40:
    if (memEQ(name, "EVAS_NATIVE_SURFACE_STATUS_PLANE_RELEASE", 40)) {
      *iv_return = EVAS_NATIVE_SURFACE_STATUS_PLANE_RELEASE;
      return PERL_constant_ISIV;
    }
    break;
  case 42:
    if (memEQ(name, "EVAS_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED", 42)) {
      *iv_return = EVAS_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

