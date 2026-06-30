#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>
#include "PLSmart.h"

#include "const-perlsmart-c.inc"

MODULE = pEFL::PerlSmartClass		PACKAGE = pEFL::PerlSmartClass

INCLUDE: const-perlsmart-xs.inc

PerlSmartClass *
_perl_smartclass_new(pclass,cbs, base)
	char *pclass
	HV *cbs
	int base
PREINIT:
	PerlSmartClass *perl_sc;
CODE:
	/* 1. ZUERST VALIDIEREN: Wenn croak auslöst, gab es noch keine Allokation */
	if (base != 0 && base != 1) {
		croak("Error: Base smart class can only be\n"
		      "\tPERLSMARTCLASS_BASE_NONE (=0) or\n"
		      "\tPERLSMARTCLASS_BASE_CLIPPED (=1)\n");
	}
	
	Newxz(perl_sc, 1, PerlSmartClass);
	
	// wir speichern unsere Evas_Smart_Class in perlsmat->sc
	// Hier geben wir name und Version an
	perl_sc->smart_class.name = savepv(pclass);
	perl_sc->smart_class.version = EVAS_SMART_CLASS_VERSION;
	
	if (base == 0) {
		// No base, nothing to do here
		// Explizites Nullen mit Zero() - kosmetisch und eigentlich nicht 
		// erforderlich, weil Newxz das auch für parent_sc schon getan hat,
		// Bei direkter Übergabe von NULL gibtes einen Compiler-Fehler!
		//Zero(&(perl_sc->parent_sc), 1, Evas_Smart_Class);
	}
	else if (base == 1) {
		// Füllt unsere smart_class mit den Defaults aus der
		// Clipped_Smart_Class
		evas_object_smart_clipped_smart_set(&perl_sc->smart_class);
	
		// Kopiert die Defaults auch nochmal in den Wert
		// perl_sc->parent_sc (damit wir später nach Überschreiben die Defaults
		// der Clipped_Smart_Class weiterhin in den einzelnen Perl Funktionen
		// aufrufen können
		perl_sc->parent_sc = perl_sc->smart_class;
	}
	
	// hier speichern wir noch die Perl Klasse
	// savepv alloziert den benötigten Speicher für uns
	// pclass ist ja ein Pointer, kein Wert, so dass wir ihn 
	// eigenständig allozieren müssen (wird nicht mit Newxs(perl_sc...) alloziert)
	perl_sc->pclass = savepv(pclass);
	
	// wir brauchen einen Backpointer auf uns selbst
	// Nur so können wir in den einzelnen Funktionen mit Hilfe von evas_object_smart_get
	// und evas_smart_data_get(smart) die Perl Klasse ermitteln!!!
	perl_sc->smart_class.data = perl_sc;
	
	// Jetzt überschreiben wir endlich die Defaults der Clipped_Smart_Class
	if (hv_exists(cbs,"add",3)) {
		perl_sc->smart_class.add = perl_smart_add;
	}
	if (hv_exists(cbs,"del",3)) {
		perl_sc->smart_class.del = perl_smart_del;
	}
	if (hv_exists(cbs,"move",4)) {
		perl_sc->smart_class.move = perl_smart_move;
	}
	if (hv_exists(cbs,"resize",6)) {
		perl_sc->smart_class.resize = perl_smart_resize;
	}
	if (hv_exists(cbs,"show",4)) {
		perl_sc->smart_class.show = perl_smart_show;
	}
	if (hv_exists(cbs,"hide",4)) {
		perl_sc->smart_class.hide = perl_smart_hide;
	}
	if (hv_exists(cbs,"color_set",9)) {
		perl_sc->smart_class.color_set = perl_smart_color_set;
	}
	if (hv_exists(cbs,"clip_set",8)) {
		perl_sc->smart_class.clip_set = perl_smart_clip_set;
	}
	if (hv_exists(cbs,"clip_unset",10)) {
		perl_sc->smart_class.clip_unset = perl_smart_clip_unset;
	}
	if (hv_exists(cbs,"calculate",9)) {
		perl_sc->smart_class.calculate = perl_smart_calculate;
	}
	if (hv_exists(cbs,"member_add",10)) {
		perl_sc->smart_class.member_add = perl_smart_member_add;
	}
	if (hv_exists(cbs,"member_del",10)) {
		perl_sc->smart_class.member_del = perl_smart_member_del;
	}
	
	/* Singleton registrieren - das ist der Ersatz für static Evas_Smart *smart: */
	perl_sc->evas_smart = evas_smart_class_new(&perl_sc->smart_class);
	RETVAL = perl_sc;
OUTPUT:
	RETVAL

MODULE = pEFL::PerlSmartClass		PACKAGE = PerlSmartClassPtr

char *
pclass(perl_sc)
	PerlSmartClass *perl_sc
CODE:
	RETVAL = perl_sc->pclass;
OUTPUT: 
	RETVAL

void
DESTROY(perl_sc)
    PerlSmartClass *perl_sc
CODE:
    if (perl_sc) {
        
        if (SvTRUE(get_sv("pEFL::Debug", 0))) {
            fprintf(stderr, "Delete PerlSmartClass with address %"UVuf" (Perl-Class: %s)\n", 
                PTR2UV(perl_sc), 
                perl_sc->pclass ? perl_sc->pclass : "NULL"
            );
        }
        
        /* 1. Zuerst die allozierten Strings der Namen freigeben */
        if (perl_sc->smart_class.name) {
            Safefree((char *)perl_sc->smart_class.name);
        }
        if (perl_sc->pclass) {
            Safefree(perl_sc->pclass);
        }

        /* 2. Falls vorhanden, das EFL-Smart-Klassenkonstrukt freigeben */
        if (perl_sc->evas_smart) {
            evas_smart_free(perl_sc->evas_smart);
        }

        /* 3. Zum Schluss die gesamte Hauptstruktur freigeben */
        Safefree(perl_sc);
    }
