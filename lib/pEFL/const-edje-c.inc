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
constant_16 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_CHANNEL_ALL EDJE_CURSOR_MAIN EDJE_CURSOR_USER EDJE_DRAG_DIR_XY */
  /* Offset 15 gives the best switch position.  */
  switch (name[15]) {
  case 'L':
    if (memEQ(name, "EDJE_CHANNEL_AL", 15)) {
    /*                              L      */
      *iv_return = EDJE_CHANNEL_ALL;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EDJE_CURSOR_MAI", 15)) {
    /*                              N      */
      *iv_return = EDJE_CURSOR_MAIN;
      return PERL_constant_ISIV;
    }
    break;
  case 'R':
    if (memEQ(name, "EDJE_CURSOR_USE", 15)) {
    /*                              R      */
      *iv_return = EDJE_CURSOR_USER;
      return PERL_constant_ISIV;
    }
    break;
  case 'Y':
    if (memEQ(name, "EDJE_DRAG_DIR_X", 15)) {
    /*                              Y      */
      *iv_return = EDJE_DRAG_DIR_XY;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_18 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_CHANNEL_ALERT EDJE_CHANNEL_INPUT EDJE_CHANNEL_MUSIC
     EDJE_DRAG_DIR_NONE */
  /* Offset 16 gives the best switch position.  */
  switch (name[16]) {
  case 'I':
    if (memEQ(name, "EDJE_CHANNEL_MUSIC", 18)) {
    /*                               ^        */
      *iv_return = EDJE_CHANNEL_MUSIC;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EDJE_DRAG_DIR_NONE", 18)) {
    /*                               ^        */
      *iv_return = EDJE_DRAG_DIR_NONE;
      return PERL_constant_ISIV;
    }
    break;
  case 'R':
    if (memEQ(name, "EDJE_CHANNEL_ALERT", 18)) {
    /*                               ^        */
      *iv_return = EDJE_CHANNEL_ALERT;
      return PERL_constant_ISIV;
    }
    break;
  case 'U':
    if (memEQ(name, "EDJE_CHANNEL_INPUT", 18)) {
    /*                               ^        */
      *iv_return = EDJE_CHANNEL_INPUT;
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
     EDJE_CHANNEL_BACKGROUND EDJE_CHANNEL_FOREGROUND EDJE_CURSOR_PREEDIT_END
     EDJE_LOAD_ERROR_GENERIC */
  /* Offset 16 gives the best switch position.  */
  switch (name[16]) {
  case 'D':
    if (memEQ(name, "EDJE_CURSOR_PREEDIT_END", 23)) {
    /*                               ^             */
      *iv_return = EDJE_CURSOR_PREEDIT_END;
      return PERL_constant_ISIV;
    }
    break;
  case 'E':
    if (memEQ(name, "EDJE_CHANNEL_FOREGROUND", 23)) {
    /*                               ^             */
      *iv_return = EDJE_CHANNEL_FOREGROUND;
      return PERL_constant_ISIV;
    }
    break;
  case 'G':
    if (memEQ(name, "EDJE_LOAD_ERROR_GENERIC", 23)) {
    /*                               ^             */
      *iv_return = EDJE_LOAD_ERROR_GENERIC;
      return PERL_constant_ISIV;
    }
    break;
  case 'K':
    if (memEQ(name, "EDJE_CHANNEL_BACKGROUND", 23)) {
    /*                               ^             */
      *iv_return = EDJE_CHANNEL_BACKGROUND;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_27 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_CURSOR_SELECTION_BEGIN EDJE_INPUT_PANEL_LAYOUT_HEX
     EDJE_INPUT_PANEL_LAYOUT_URL */
  /* Offset 26 gives the best switch position.  */
  switch (name[26]) {
  case 'L':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_UR", 26)) {
    /*                                         L      */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_URL;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EDJE_CURSOR_SELECTION_BEGI", 26)) {
    /*                                         N      */
      *iv_return = EDJE_CURSOR_SELECTION_BEGIN;
      return PERL_constant_ISIV;
    }
    break;
  case 'X':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_HE", 26)) {
    /*                                         X      */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_HEX;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_28 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_EXTERNAL_PARAM_TYPE_INT EDJE_EXTERNAL_PARAM_TYPE_MAX
     EDJE_LOAD_ERROR_CORRUPT_FILE */
  /* Offset 26 gives the best switch position.  */
  switch (name[26]) {
  case 'A':
    if (memEQ(name, "EDJE_EXTERNAL_PARAM_TYPE_MAX", 28)) {
    /*                                         ^        */
      *iv_return = EDJE_EXTERNAL_PARAM_TYPE_MAX;
      return PERL_constant_ISIV;
    }
    break;
  case 'L':
    if (memEQ(name, "EDJE_LOAD_ERROR_CORRUPT_FILE", 28)) {
    /*                                         ^        */
      *iv_return = EDJE_LOAD_ERROR_CORRUPT_FILE;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EDJE_EXTERNAL_PARAM_TYPE_INT", 28)) {
    /*                                         ^        */
      *iv_return = EDJE_EXTERNAL_PARAM_TYPE_INT;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_29 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_EXTERNAL_PARAM_TYPE_BOOL EDJE_INPUT_HINT_AUTO_COMPLETE
     EDJE_INPUT_PANEL_LAYOUT_EMAIL EDJE_INPUT_PANEL_LAYOUT_MONTH
     EDJE_INPUT_PANEL_LAYOUT_VOICE */
  /* Offset 26 gives the best switch position.  */
  switch (name[26]) {
  case 'A':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_EMAIL", 29)) {
    /*                                         ^         */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_EMAIL;
      return PERL_constant_ISIV;
    }
    break;
  case 'E':
    if (memEQ(name, "EDJE_INPUT_HINT_AUTO_COMPLETE", 29)) {
    /*                                         ^         */
      *iv_return = EDJE_INPUT_HINT_AUTO_COMPLETE;
      return PERL_constant_ISIV;
    }
    break;
  case 'I':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_VOICE", 29)) {
    /*                                         ^         */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_VOICE;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_MONTH", 29)) {
    /*                                         ^         */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_MONTH;
      return PERL_constant_ISIV;
    }
    break;
  case 'O':
    if (memEQ(name, "EDJE_EXTERNAL_PARAM_TYPE_BOOL", 29)) {
    /*                                         ^         */
      *iv_return = EDJE_EXTERNAL_PARAM_TYPE_BOOL;
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
     EDJE_INPUT_HINT_SENSITIVE_DATA EDJE_INPUT_PANEL_LANG_ALPHABET
     EDJE_INPUT_PANEL_LAYOUT_NORMAL EDJE_INPUT_PANEL_LAYOUT_NUMBER
     EDJE_LOAD_ERROR_DOES_NOT_EXIST EDJE_LOAD_ERROR_UNKNOWN_FORMAT */
  /* Offset 21 gives the best switch position.  */
  switch (name[21]) {
  case 'N':
    if (memEQ(name, "EDJE_LOAD_ERROR_DOES_NOT_EXIST", 30)) {
    /*                                    ^               */
      *iv_return = EDJE_LOAD_ERROR_DOES_NOT_EXIST;
      return PERL_constant_ISIV;
    }
    break;
  case 'T':
    if (memEQ(name, "EDJE_INPUT_HINT_SENSITIVE_DATA", 30)) {
    /*                                    ^               */
      *iv_return = EDJE_INPUT_HINT_SENSITIVE_DATA;
      return PERL_constant_ISIV;
    }
    break;
  case 'U':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_NORMAL", 30)) {
    /*                                    ^               */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_NORMAL;
      return PERL_constant_ISIV;
    }
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_NUMBER", 30)) {
    /*                                    ^               */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_NUMBER;
      return PERL_constant_ISIV;
    }
    break;
  case 'W':
    if (memEQ(name, "EDJE_LOAD_ERROR_UNKNOWN_FORMAT", 30)) {
    /*                                    ^               */
      *iv_return = EDJE_LOAD_ERROR_UNKNOWN_FORMAT;
      return PERL_constant_ISIV;
    }
    break;
  case '_':
    if (memEQ(name, "EDJE_INPUT_PANEL_LANG_ALPHABET", 30)) {
    /*                                    ^               */
      *iv_return = EDJE_INPUT_PANEL_LANG_ALPHABET;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_31 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_EXTERNAL_PARAM_TYPE_CHOICE EDJE_EXTERNAL_PARAM_TYPE_DOUBLE
     EDJE_EXTERNAL_PARAM_TYPE_STRING EDJE_INPUT_PANEL_LANG_AUTOMATIC
     EDJE_INPUT_PANEL_LAYOUT_INVALID EDJE_TEXT_AUTOCAPITAL_TYPE_NONE
     EDJE_TEXT_AUTOCAPITAL_TYPE_WORD */
  /* Offset 25 gives the best switch position.  */
  switch (name[25]) {
  case 'C':
    if (memEQ(name, "EDJE_EXTERNAL_PARAM_TYPE_CHOICE", 31)) {
    /*                                        ^            */
      *iv_return = EDJE_EXTERNAL_PARAM_TYPE_CHOICE;
      return PERL_constant_ISIV;
    }
    break;
  case 'D':
    if (memEQ(name, "EDJE_EXTERNAL_PARAM_TYPE_DOUBLE", 31)) {
    /*                                        ^            */
      *iv_return = EDJE_EXTERNAL_PARAM_TYPE_DOUBLE;
      return PERL_constant_ISIV;
    }
    break;
  case 'E':
    if (memEQ(name, "EDJE_TEXT_AUTOCAPITAL_TYPE_NONE", 31)) {
    /*                                        ^            */
      *iv_return = EDJE_TEXT_AUTOCAPITAL_TYPE_NONE;
      return PERL_constant_ISIV;
    }
    if (memEQ(name, "EDJE_TEXT_AUTOCAPITAL_TYPE_WORD", 31)) {
    /*                                        ^            */
      *iv_return = EDJE_TEXT_AUTOCAPITAL_TYPE_WORD;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_INVALID", 31)) {
    /*                                        ^            */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_INVALID;
      return PERL_constant_ISIV;
    }
    break;
  case 'O':
    if (memEQ(name, "EDJE_INPUT_PANEL_LANG_AUTOMATIC", 31)) {
    /*                                        ^            */
      *iv_return = EDJE_INPUT_PANEL_LANG_AUTOMATIC;
      return PERL_constant_ISIV;
    }
    break;
  case 'S':
    if (memEQ(name, "EDJE_EXTERNAL_PARAM_TYPE_STRING", 31)) {
    /*                                        ^            */
      *iv_return = EDJE_EXTERNAL_PARAM_TYPE_STRING;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_32 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_INPUT_PANEL_LAYOUT_DATETIME EDJE_INPUT_PANEL_LAYOUT_EMOTICON
     EDJE_INPUT_PANEL_LAYOUT_PASSWORD EDJE_INPUT_PANEL_LAYOUT_TERMINAL */
  /* Offset 26 gives the best switch position.  */
  switch (name[26]) {
  case 'O':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_EMOTICON", 32)) {
    /*                                         ^            */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_EMOTICON;
      return PERL_constant_ISIV;
    }
    break;
  case 'R':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_TERMINAL", 32)) {
    /*                                         ^            */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_TERMINAL;
      return PERL_constant_ISIV;
    }
    break;
  case 'S':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_PASSWORD", 32)) {
    /*                                         ^            */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_PASSWORD;
      return PERL_constant_ISIV;
    }
    break;
  case 'T':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_DATETIME", 32)) {
    /*                                         ^            */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_DATETIME;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_35 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_INPUT_PANEL_LAYOUT_PHONENUMBER EDJE_INPUT_PANEL_RETURN_KEY_TYPE_GO
     EDJE_LOAD_ERROR_RECURSIVE_REFERENCE EDJE_TEXT_AUTOCAPITAL_TYPE_SENTENCE */
  /* Offset 30 gives the best switch position.  */
  switch (name[30]) {
  case 'P':
    if (memEQ(name, "EDJE_INPUT_PANEL_RETURN_KEY_TYPE_GO", 35)) {
    /*                                             ^           */
      *iv_return = EDJE_INPUT_PANEL_RETURN_KEY_TYPE_GO;
      return PERL_constant_ISIV;
    }
    break;
  case 'R':
    if (memEQ(name, "EDJE_LOAD_ERROR_RECURSIVE_REFERENCE", 35)) {
    /*                                             ^           */
      *iv_return = EDJE_LOAD_ERROR_RECURSIVE_REFERENCE;
      return PERL_constant_ISIV;
    }
    break;
  case 'T':
    if (memEQ(name, "EDJE_TEXT_AUTOCAPITAL_TYPE_SENTENCE", 35)) {
    /*                                             ^           */
      *iv_return = EDJE_TEXT_AUTOCAPITAL_TYPE_SENTENCE;
      return PERL_constant_ISIV;
    }
    break;
  case 'U':
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_PHONENUMBER", 35)) {
    /*                                             ^           */
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_PHONENUMBER;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_37 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_INPUT_PANEL_RETURN_KEY_TYPE_DONE
     EDJE_INPUT_PANEL_RETURN_KEY_TYPE_JOIN
     EDJE_INPUT_PANEL_RETURN_KEY_TYPE_NEXT
     EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEND */
  /* Offset 33 gives the best switch position.  */
  switch (name[33]) {
  case 'D':
    if (memEQ(name, "EDJE_INPUT_PANEL_RETURN_KEY_TYPE_DONE", 37)) {
    /*                                                ^          */
      *iv_return = EDJE_INPUT_PANEL_RETURN_KEY_TYPE_DONE;
      return PERL_constant_ISIV;
    }
    break;
  case 'J':
    if (memEQ(name, "EDJE_INPUT_PANEL_RETURN_KEY_TYPE_JOIN", 37)) {
    /*                                                ^          */
      *iv_return = EDJE_INPUT_PANEL_RETURN_KEY_TYPE_JOIN;
      return PERL_constant_ISIV;
    }
    break;
  case 'N':
    if (memEQ(name, "EDJE_INPUT_PANEL_RETURN_KEY_TYPE_NEXT", 37)) {
    /*                                                ^          */
      *iv_return = EDJE_INPUT_PANEL_RETURN_KEY_TYPE_NEXT;
      return PERL_constant_ISIV;
    }
    break;
  case 'S':
    if (memEQ(name, "EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEND", 37)) {
    /*                                                ^          */
      *iv_return = EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEND;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

static int
constant_39 (pTHX_ const char *name, IV *iv_return) {
  /* When generated this function returned values for the list of names given
     here.  However, subsequent manual editing may have added or removed some.
     EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEARCH
     EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SIGNIN
     EDJE_TEXT_AUTOCAPITAL_TYPE_ALLCHARACTER */
  /* Offset 35 gives the best switch position.  */
  switch (name[35]) {
  case 'A':
    if (memEQ(name, "EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEARCH", 39)) {
    /*                                                  ^          */
      *iv_return = EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEARCH;
      return PERL_constant_ISIV;
    }
    break;
  case 'C':
    if (memEQ(name, "EDJE_TEXT_AUTOCAPITAL_TYPE_ALLCHARACTER", 39)) {
    /*                                                  ^          */
      *iv_return = EDJE_TEXT_AUTOCAPITAL_TYPE_ALLCHARACTER;
      return PERL_constant_ISIV;
    }
    break;
  case 'G':
    if (memEQ(name, "EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SIGNIN", 39)) {
    /*                                                  ^          */
      *iv_return = EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SIGNIN;
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
            {name=>"EDJE_CHANNEL_ALERT", type=>"IV", macro=>"1"},
            {name=>"EDJE_CHANNEL_ALL", type=>"IV", macro=>"1"},
            {name=>"EDJE_CHANNEL_BACKGROUND", type=>"IV", macro=>"1"},
            {name=>"EDJE_CHANNEL_EFFECT", type=>"IV", macro=>"1"},
            {name=>"EDJE_CHANNEL_FOREGROUND", type=>"IV", macro=>"1"},
            {name=>"EDJE_CHANNEL_INPUT", type=>"IV", macro=>"1"},
            {name=>"EDJE_CHANNEL_INTERFACE", type=>"IV", macro=>"1"},
            {name=>"EDJE_CHANNEL_MUSIC", type=>"IV", macro=>"1"},
            {name=>"EDJE_CURSOR_MAIN", type=>"IV", macro=>"1"},
            {name=>"EDJE_CURSOR_PREEDIT_END", type=>"IV", macro=>"1"},
            {name=>"EDJE_CURSOR_PREEDIT_START", type=>"IV", macro=>"1"},
            {name=>"EDJE_CURSOR_SELECTION_BEGIN", type=>"IV", macro=>"1"},
            {name=>"EDJE_CURSOR_SELECTION_END", type=>"IV", macro=>"1"},
            {name=>"EDJE_CURSOR_USER", type=>"IV", macro=>"1"},
            {name=>"EDJE_CURSOR_USER_EXTRA", type=>"IV", macro=>"1"},
            {name=>"EDJE_DRAG_DIR_NONE", type=>"IV", macro=>"1"},
            {name=>"EDJE_DRAG_DIR_X", type=>"IV", macro=>"1"},
            {name=>"EDJE_DRAG_DIR_XY", type=>"IV", macro=>"1"},
            {name=>"EDJE_DRAG_DIR_Y", type=>"IV", macro=>"1"},
            {name=>"EDJE_EXTERNAL_PARAM_TYPE_BOOL", type=>"IV", macro=>"1"},
            {name=>"EDJE_EXTERNAL_PARAM_TYPE_CHOICE", type=>"IV", macro=>"1"},
            {name=>"EDJE_EXTERNAL_PARAM_TYPE_DOUBLE", type=>"IV", macro=>"1"},
            {name=>"EDJE_EXTERNAL_PARAM_TYPE_INT", type=>"IV", macro=>"1"},
            {name=>"EDJE_EXTERNAL_PARAM_TYPE_MAX", type=>"IV", macro=>"1"},
            {name=>"EDJE_EXTERNAL_PARAM_TYPE_STRING", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_HINT_AUTO_COMPLETE", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_HINT_NONE", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_HINT_SENSITIVE_DATA", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LANG_ALPHABET", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LANG_AUTOMATIC", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_DATETIME", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_EMAIL", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_EMOTICON", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_HEX", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_INVALID", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_IP", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_MONTH", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_NORMAL", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_NUMBER", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_NUMBERONLY", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_PASSWORD", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_PHONENUMBER", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_TERMINAL", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_URL", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_LAYOUT_VOICE", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_RETURN_KEY_TYPE_DEFAULT", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_RETURN_KEY_TYPE_DONE", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_RETURN_KEY_TYPE_GO", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_RETURN_KEY_TYPE_JOIN", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_RETURN_KEY_TYPE_LOGIN", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_RETURN_KEY_TYPE_NEXT", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEARCH", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEND", type=>"IV", macro=>"1"},
            {name=>"EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SIGNIN", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_CORRUPT_FILE", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_DOES_NOT_EXIST", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_GENERIC", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_INCOMPATIBLE_FILE", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_NONE", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_PERMISSION_DENIED", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_RECURSIVE_REFERENCE", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_UNKNOWN_COLLECTION", type=>"IV", macro=>"1"},
            {name=>"EDJE_LOAD_ERROR_UNKNOWN_FORMAT", type=>"IV", macro=>"1"},
            {name=>"EDJE_TEXT_AUTOCAPITAL_TYPE_ALLCHARACTER", type=>"IV", macro=>"1"},
            {name=>"EDJE_TEXT_AUTOCAPITAL_TYPE_NONE", type=>"IV", macro=>"1"},
            {name=>"EDJE_TEXT_AUTOCAPITAL_TYPE_SENTENCE", type=>"IV", macro=>"1"},
            {name=>"EDJE_TEXT_AUTOCAPITAL_TYPE_WORD", type=>"IV", macro=>"1"});

print constant_types(), "\n"; # macro defs
foreach (C_constant ("pEFL::Edje", 'constant', 'IV', $types, undef, 3, @names) ) {
    print $_, "\n"; # C constant subs
}
print "\n#### XS Section:\n";
print XS_constant ("pEFL::Edje", $types);
__END__
   */

  switch (len) {
  case 15:
    /* Names all of length 15.  */
    /* EDJE_DRAG_DIR_X EDJE_DRAG_DIR_Y */
    /* Offset 14 gives the best switch position.  */
    switch (name[14]) {
    case 'X':
      if (memEQ(name, "EDJE_DRAG_DIR_", 14)) {
      /*                             X      */
        *iv_return = EDJE_DRAG_DIR_X;
        return PERL_constant_ISIV;
      }
      break;
    case 'Y':
      if (memEQ(name, "EDJE_DRAG_DIR_", 14)) {
      /*                             Y      */
        *iv_return = EDJE_DRAG_DIR_Y;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 16:
    return constant_16 (aTHX_ name, iv_return);
    break;
  case 18:
    return constant_18 (aTHX_ name, iv_return);
    break;
  case 19:
    if (memEQ(name, "EDJE_CHANNEL_EFFECT", 19)) {
      *iv_return = EDJE_CHANNEL_EFFECT;
      return PERL_constant_ISIV;
    }
    break;
  case 20:
    /* Names all of length 20.  */
    /* EDJE_INPUT_HINT_NONE EDJE_LOAD_ERROR_NONE */
    /* Offset 6 gives the best switch position.  */
    switch (name[6]) {
    case 'N':
      if (memEQ(name, "EDJE_INPUT_HINT_NONE", 20)) {
      /*                     ^                    */
        *iv_return = EDJE_INPUT_HINT_NONE;
        return PERL_constant_ISIV;
      }
      break;
    case 'O':
      if (memEQ(name, "EDJE_LOAD_ERROR_NONE", 20)) {
      /*                     ^                    */
        *iv_return = EDJE_LOAD_ERROR_NONE;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 22:
    /* Names all of length 22.  */
    /* EDJE_CHANNEL_INTERFACE EDJE_CURSOR_USER_EXTRA */
    /* Offset 9 gives the best switch position.  */
    switch (name[9]) {
    case 'N':
      if (memEQ(name, "EDJE_CHANNEL_INTERFACE", 22)) {
      /*                        ^                   */
        *iv_return = EDJE_CHANNEL_INTERFACE;
        return PERL_constant_ISIV;
      }
      break;
    case 'O':
      if (memEQ(name, "EDJE_CURSOR_USER_EXTRA", 22)) {
      /*                        ^                   */
        *iv_return = EDJE_CURSOR_USER_EXTRA;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 23:
    return constant_23 (aTHX_ name, iv_return);
    break;
  case 25:
    /* Names all of length 25.  */
    /* EDJE_CURSOR_PREEDIT_START EDJE_CURSOR_SELECTION_END */
    /* Offset 16 gives the best switch position.  */
    switch (name[16]) {
    case 'C':
      if (memEQ(name, "EDJE_CURSOR_SELECTION_END", 25)) {
      /*                               ^               */
        *iv_return = EDJE_CURSOR_SELECTION_END;
        return PERL_constant_ISIV;
      }
      break;
    case 'D':
      if (memEQ(name, "EDJE_CURSOR_PREEDIT_START", 25)) {
      /*                               ^               */
        *iv_return = EDJE_CURSOR_PREEDIT_START;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 26:
    if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_IP", 26)) {
      *iv_return = EDJE_INPUT_PANEL_LAYOUT_IP;
      return PERL_constant_ISIV;
    }
    break;
  case 27:
    return constant_27 (aTHX_ name, iv_return);
    break;
  case 28:
    return constant_28 (aTHX_ name, iv_return);
    break;
  case 29:
    return constant_29 (aTHX_ name, iv_return);
    break;
  case 30:
    return constant_30 (aTHX_ name, iv_return);
    break;
  case 31:
    return constant_31 (aTHX_ name, iv_return);
    break;
  case 32:
    return constant_32 (aTHX_ name, iv_return);
    break;
  case 33:
    /* Names all of length 33.  */
    /* EDJE_LOAD_ERROR_INCOMPATIBLE_FILE EDJE_LOAD_ERROR_PERMISSION_DENIED */
    /* Offset 32 gives the best switch position.  */
    switch (name[32]) {
    case 'D':
      if (memEQ(name, "EDJE_LOAD_ERROR_PERMISSION_DENIE", 32)) {
      /*                                               D      */
        *iv_return = EDJE_LOAD_ERROR_PERMISSION_DENIED;
        return PERL_constant_ISIV;
      }
      break;
    case 'E':
      if (memEQ(name, "EDJE_LOAD_ERROR_INCOMPATIBLE_FIL", 32)) {
      /*                                               E      */
        *iv_return = EDJE_LOAD_ERROR_INCOMPATIBLE_FILE;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 34:
    /* Names all of length 34.  */
    /* EDJE_INPUT_PANEL_LAYOUT_NUMBERONLY EDJE_LOAD_ERROR_UNKNOWN_COLLECTION */
    /* Offset 6 gives the best switch position.  */
    switch (name[6]) {
    case 'N':
      if (memEQ(name, "EDJE_INPUT_PANEL_LAYOUT_NUMBERONLY", 34)) {
      /*                     ^                                  */
        *iv_return = EDJE_INPUT_PANEL_LAYOUT_NUMBERONLY;
        return PERL_constant_ISIV;
      }
      break;
    case 'O':
      if (memEQ(name, "EDJE_LOAD_ERROR_UNKNOWN_COLLECTION", 34)) {
      /*                     ^                                  */
        *iv_return = EDJE_LOAD_ERROR_UNKNOWN_COLLECTION;
        return PERL_constant_ISIV;
      }
      break;
    }
    break;
  case 35:
    return constant_35 (aTHX_ name, iv_return);
    break;
  case 37:
    return constant_37 (aTHX_ name, iv_return);
    break;
  case 38:
    if (memEQ(name, "EDJE_INPUT_PANEL_RETURN_KEY_TYPE_LOGIN", 38)) {
      *iv_return = EDJE_INPUT_PANEL_RETURN_KEY_TYPE_LOGIN;
      return PERL_constant_ISIV;
    }
    break;
  case 39:
    return constant_39 (aTHX_ name, iv_return);
    break;
  case 40:
    if (memEQ(name, "EDJE_INPUT_PANEL_RETURN_KEY_TYPE_DEFAULT", 40)) {
      *iv_return = EDJE_INPUT_PANEL_RETURN_KEY_TYPE_DEFAULT;
      return PERL_constant_ISIV;
    }
    break;
  case 42:
    if (memEQ(name, "EDJE_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED", 42)) {
      *iv_return = EDJE_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED;
      return PERL_constant_ISIV;
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

