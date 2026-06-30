#ifndef H_PLSMART

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>


/*  PerlSmartClass
 * 	C struct of the PerlSmartClass. Members are:
 *
 *	smart_class
 *	= Evas smart class
 *	= reine Struktur aus Funktionspointern (add, del, move etc.) und Metadaten (Name, Version). 
 *	= beschreibt lediglich, wie sich eine Klasse verhalten soll (= passiver Bauplan der Smart Class). 
 *	= eingebettet als Wert, nicht als Pointer => Speicher wird mit perlsmart alloziert, keine eigenständige Allokation notwendig
 *
 *	parent_sc
 *	= Kopie der Clipped-Defaults für SUPER-Calls, ebenfalls als Wert eingebettet
 *
 *	pclass
 *	= Perl package name
 *
 *	evas_smart
 *	= lebendige Klassen-Objekt im Evas-System (= aktive Maschine der Smart Class) 
 *	= wird durch die C Funktion evas_smart_class_new(&smart_class) erstellt, die 
 *		- den Speicher alloziert, 
 *		- die Klasse intern im GUI-System mit einer eindeutigen ID registriert
 *		- und die fertige Evas_Smart-Maschine baut
 *	= In reinem C würde man diese Klasse in einer globalen "static Evas_Smart *smart"
 *	 Variable verstecken. Da wir aber aus Perl heraus dynamisch zur Laufzeit neue
 *	 Klassen generieren (z.B. My::Button, My::Slider), können wir keine statischen
 *	 C-Variablen vorausplanen.
 *	= perl_sc->evas_smart ist dennoch die EINZIGE Instanz (das Singleton) dieser spezifischen Klassenmaschine 
 *	= Alle spätereen Objekte der Klasse nutzen diesen einen zentralen Pointer, um ihr Verhalten zu steuern.
 *
 * ------------------------------------------------------------------------------------------------------ */
typedef struct {
    Evas_Smart_Class  smart_class;    
    Evas_Smart_Class  parent_sc;
    char             *pclass;   
    Evas_Smart       *evas_smart;
} PerlSmartClass;

typedef PerlSmartClass PerlSmartClassPtr;

typedef struct {
    Evas_Object_Smart_Clipped_Data base; /* MUSS erstes Feld sein */
    /* kein weiteres Feld nötig - Daten leben in %PerlSmartObjects */
} PerlSmartObject;

typedef PerlSmartObject PerlSmartObjectPtr;

// Wichtig in typemap folgenden Eintrag übernehmen:
// PerlSmartClassPtr    T_PTROBJ
// PerlSmartObjectPtr    T_PTROBJ
// EvasSmartPtr			T_PTROBJ


// Die einzelnen Wrapper Funktionen

void perl_smart_add(Evas_Object *o);
void perl_smart_del(Evas_Object *o);
void perl_smart_move(Evas_Object *o, Evas_Coord x, Evas_Coord y);
void perl_smart_resize(Evas_Object *o, Evas_Coord w, Evas_Coord h);
void perl_smart_show(Evas_Object *o);
void perl_smart_hide(Evas_Object *o);
void perl_smart_color_set(Evas_Object *o, int r, int g, int b, int a);
void perl_smart_clip_set(Evas_Object *o, Evas_Object *clip);
void perl_smart_clip_unset(Evas_Object *o);
void perl_smart_calculate(Evas_Object *o);
void perl_smart_member_add(Evas_Object *o, Evas_Object *member);
void perl_smart_member_del(Evas_Object *o, Evas_Object *member);

#define H_PLSMART
#endif
