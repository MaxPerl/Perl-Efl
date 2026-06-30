#include "PLSmart.h"

void perl_smart_add(Evas_Object *o) {
	dTHX;
	dSP;
	
	// Instanz-Struct allozieren - MUSS hier passieren, kann nicht aus Perl */
    	PerlSmartObject *priv;
    	Newxz(priv, 1, PerlSmartObject);
    	evas_object_smart_data_set(o, priv);
	
	// Problem: Wir brauchen pclass
    	// Eine Möglichkeit: "common initial sequence"
    	// ABER: Das ist uns zu kompliziert :-D
    	// Daher holen wir uns die pclass aus dem data Feld unseres Evas_Smart,
    	// in die wir in _perl_smartclass_new() ja genau zu diesem Zweck einen
    	// Backpointer auf unseren PerlSmartClassPtr abgelegt haben!!!
    	// ALSO Klassen-Data holen: Evas_Smart* -> data -> PerlSmartClassPtr */
    	Evas_Smart *smart = evas_object_smart_smart_get(o);
    	PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    
	const char *pclass = perl_sc->pclass;
    	
	// Obj
	SV *s_obj = newSV(0);
	sv_setref_pv(s_obj, pclass, o);
	
	ENTER;
	SAVETMPS;

	PUSHMARK(SP);
	
	XPUSHs(sv_2mortal(s_obj));
	
	PUTBACK;
	
	call_method("_add", G_DISCARD);

	FREETMPS;
	LEAVE;
}

void perl_smart_del(Evas_Object *o) {
	dTHX;
	dSP;
	
	// PROBLEM: WIR BRAUCHEN DIE PCLASS
	// siehe Details oben bei add!
	// Klassen-Data holen: Evas_Smart* -> data -> PerlSmartClassPtr */
	Evas_Smart *smart = evas_object_smart_smart_get(o);
	PerlSmartClass *perl_sc = evas_smart_data_get(smart);
	const char *pclass = perl_sc->pclass;
    
   	// Obj
	SV *s_obj = newSV(0);
	sv_setref_pv(s_obj, pclass, o);
	
	ENTER;
	SAVETMPS;

	PUSHMARK(SP);
	
	XPUSHs(sv_2mortal(s_obj));
	
	PUTBACK;
	
	call_method("_del", G_DISCARD);

	FREETMPS;
	LEAVE;
	
	//Instanz-Struct freigeben - NACH dem Perl-Aufruf, analog zu free(priv) in C
	// MUSS nach dem Perl _del-Aufruf passieren, weil:
	// 1. Der Anwender in _del noch parent_sc->del aufruft, das auf
	// priv->base.clipper zugreift - wäre nach Safefree ungültig.
	// 2. Analog zu free(priv) am Ende von _mywidget_del() in C:
	//	* erst Perl aufräumen, dann C-Speicher freigeben.
     	//	* Das Gegenstück zu Newxz(priv,...) in perl_smart_add(). */
	PerlSmartObject *priv = evas_object_smart_data_get(o);
	if (priv) {
	        Safefree(priv);
	        evas_object_smart_data_set(o, NULL);
    	}
}

void perl_smart_move(Evas_Object *o, Evas_Coord x, Evas_Coord y) {
	dTHX;
	dSP;
	
	// PROBLEM: WIR BRAUCHEN DIE PCLASS
	// siehe Details oben bei add!
	// Klassen-Data holen: Evas_Smart* -> data -> PerlSmartClassPtr */
    	Evas_Smart *smart = evas_object_smart_smart_get(o);
    	PerlSmartClass *perl_sc = evas_smart_data_get(smart);
   	const char *pclass = perl_sc->pclass;
    	
	// Obj
	SV *s_obj = newSV(0);
	sv_setref_pv(s_obj, pclass, o);
	
	// Evas_Coord
	SV *s_x = newSViv(x);
	SV *s_y = newSViv(y);
	
	ENTER;
	SAVETMPS;

	PUSHMARK(SP);
	
	XPUSHs(sv_2mortal(s_obj));
	XPUSHs(sv_2mortal(s_x));
	XPUSHs(sv_2mortal(s_y));
	
	PUTBACK;
	
	call_method("_move", G_DISCARD);

	FREETMPS;
	LEAVE;
}

void perl_smart_resize(Evas_Object *o, Evas_Coord x, Evas_Coord y) {
	dTHX;
	dSP;
	
	// PROBLEM: WIR BRAUCHEN DIE PCLASS
	// siehe Details oben bei add!
	
    /* Klassen-Data holen: Evas_Smart* -> data -> PerlSmartClassPtr */
    Evas_Smart *smart = evas_object_smart_smart_get(o);
    PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    
    // und damit pclass holen
    const char *pclass = perl_sc->pclass;
    	
	// Obj
	SV *s_obj = newSV(0);
	sv_setref_pv(s_obj, pclass, o);
	
	// Evas_Coord
	SV *s_x = newSViv(x);
	SV *s_y = newSViv(y);
	
	ENTER;
	SAVETMPS;

	PUSHMARK(SP);
	
	XPUSHs(sv_2mortal(s_obj));
	XPUSHs(sv_2mortal(s_x));
	XPUSHs(sv_2mortal(s_y));
	
	PUTBACK;
	
	call_method("_resize", G_DISCARD);

	FREETMPS;
	LEAVE;
}

void perl_smart_show(Evas_Object *o) {
    dTHX; dSP;
    Evas_Smart *smart = evas_object_smart_smart_get(o);
    PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    SV *s_obj = newSV(0);
    sv_setref_pv(s_obj, perl_sc->pclass, o);
    ENTER; SAVETMPS; PUSHMARK(SP);
    XPUSHs(sv_2mortal(s_obj));
    PUTBACK;
    call_method("_show", G_DISCARD);
    FREETMPS; LEAVE;
}

void perl_smart_hide(Evas_Object *o) { 
	dTHX; dSP;
    Evas_Smart *smart = evas_object_smart_smart_get(o);
    PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    SV *s_obj = newSV(0);
    sv_setref_pv(s_obj, perl_sc->pclass, o);
    ENTER; SAVETMPS; PUSHMARK(SP);
    XPUSHs(sv_2mortal(s_obj));
    PUTBACK;
    call_method("_hide", G_DISCARD);
    FREETMPS; LEAVE;
}

void perl_smart_color_set(Evas_Object *o, int r, int g, int b, int a) {
    dTHX; dSP;
    Evas_Smart *smart = evas_object_smart_smart_get(o);
    PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    SV *s_obj = newSV(0);
    sv_setref_pv(s_obj, perl_sc->pclass, o);
    ENTER; SAVETMPS; PUSHMARK(SP);
    XPUSHs(sv_2mortal(s_obj));
    XPUSHs(sv_2mortal(newSViv(r)));
    XPUSHs(sv_2mortal(newSViv(g)));
    XPUSHs(sv_2mortal(newSViv(b)));
    XPUSHs(sv_2mortal(newSViv(a)));
    PUTBACK;
    call_method("_color_set", G_DISCARD);
    FREETMPS; LEAVE;
}

void perl_smart_clip_set(Evas_Object *o, Evas_Object *clip) {
    dTHX; dSP;
    Evas_Smart *smart = evas_object_smart_smart_get(o);
    PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    SV *s_obj = newSV(0);
    sv_setref_pv(s_obj, perl_sc->pclass, o);
    SV *s_clip = newSV(0);
    sv_setref_pv(s_clip, "EvasObject", clip);
    ENTER; SAVETMPS; PUSHMARK(SP);
    XPUSHs(sv_2mortal(s_obj));
    XPUSHs(sv_2mortal(s_clip));
    PUTBACK;
    call_method("_clip_set", G_DISCARD);
    FREETMPS; LEAVE;
}

void perl_smart_clip_unset(Evas_Object *o) {
	dTHX; dSP;
    Evas_Smart *smart = evas_object_smart_smart_get(o);
    PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    SV *s_obj = newSV(0);
    sv_setref_pv(s_obj, perl_sc->pclass, o);
    ENTER; SAVETMPS; PUSHMARK(SP);
    XPUSHs(sv_2mortal(s_obj));
    PUTBACK;
    call_method("_clip_unset", G_DISCARD);
    FREETMPS; LEAVE;
}
void perl_smart_calculate(Evas_Object *o)  { 
	dTHX; dSP;
    Evas_Smart *smart = evas_object_smart_smart_get(o);
    PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    SV *s_obj = newSV(0);
    sv_setref_pv(s_obj, perl_sc->pclass, o);
    ENTER; SAVETMPS; PUSHMARK(SP);
    XPUSHs(sv_2mortal(s_obj));
    PUTBACK;
    call_method("_calculate", G_DISCARD);
    FREETMPS; LEAVE;
}

void perl_smart_member_add(Evas_Object *o, Evas_Object *member) {
    dTHX; dSP;
    Evas_Smart *smart = evas_object_smart_smart_get(o);
    PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    SV *s_obj = newSV(0);
    sv_setref_pv(s_obj, perl_sc->pclass, o);
    SV *s_clip = newSV(0);
    sv_setref_pv(s_clip, "EvasObject", member);
    ENTER; SAVETMPS; PUSHMARK(SP);
    XPUSHs(sv_2mortal(s_obj));
    XPUSHs(sv_2mortal(s_clip));
    PUTBACK;
    call_method("_member_add", G_DISCARD);
    FREETMPS; LEAVE;
}

void perl_smart_member_del(Evas_Object *o, Evas_Object *member) {
    dTHX; dSP;
    Evas_Smart *smart = evas_object_smart_smart_get(o);
    PerlSmartClass *perl_sc = evas_smart_data_get(smart);
    SV *s_obj = newSV(0);
    sv_setref_pv(s_obj, perl_sc->pclass, o);
    SV *s_clip = newSV(0);
    sv_setref_pv(s_clip, "EvasObject", member);
    ENTER; SAVETMPS; PUSHMARK(SP);
    XPUSHs(sv_2mortal(s_obj));
    XPUSHs(sv_2mortal(s_clip));
    PUTBACK;
    call_method("_member_del", G_DISCARD);
    FREETMPS; LEAVE;
}
