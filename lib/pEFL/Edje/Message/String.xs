#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Edje.h>

typedef Edje_Message_String EdjeMessageString;

MODULE = pEFL::Edje::Message::String		PACKAGE = pEFL::Edje::Message::String

EdjeMessageString *
new(class,str)
	char *class
	SV *str
PREINIT:
	EdjeMessageString *message;
	char *string;
	STRLEN len;
CODE:
	if (items != 2) {
		Perl_croak(aTHX_ "Usage pEFL::Edje::Message::String->new($string)\n");
	}
	New(0,message,1,EdjeMessageString);
	string = SvPV(str,len);
	message->str = savepvn(string,len);
	RETVAL = message;
OUTPUT:
	RETVAL

void
DESTROY(message) 
    EdjeMessageString *message
CODE:
	/* FIX: Zuerst den mit savepvn erzeugten String-Inhalt löschen */
	if (message->str) {
		Safefree(message->str);
	}
	/* Danach erst die Struktur selbst löschen */
	Safefree(message);

	
MODULE = pEFL::Edje::Message::String		PACKAGE = EdjeMessageStringPtr

char*
str(message)
    EdjeMessageString *message
CODE:
    RETVAL = message->str;
OUTPUT:
    RETVAL

=pod

/* =========================================================================
   PACKAGE: pEFL::Edje::Message::String
   -------------------------------------------------------------------------
   Dieses Package repräsentiert Nachrichten, die aktiv in Perl erstellt wurden
   (z. B. via ->new()). 
   
   OWNERSHIP: Perl besitzt diese Datenstruktur. Nach dem Senden via 
   edje_object_message_send() macht Edje intern eine tiefe Kopie (Deep Copy). 
   Das von Perl erstellte Original wird von C nicht mehr benötigt. Daher 
   MUSS Perl den Speicher im DESTROY via Safefree freigeben, um Memory Leaks 
   zu verhindern.
   ========================================================================= */

/* =========================================================================
   PACKAGE: EdjeMessageStringPtr
   -------------------------------------------------------------------------
   Dieses Package dient als Basisklasse für alle Message-String-Methoden. 
   Es wird im C-Handler (call_perl_edje_message_handler) direkt genutzt, um 
   reine Lese-Pointer aus C an Perl zu übergeben.
   
   OWNERSHIP-WARNUNG (KEIN DESTROY HIER):
   1. Kommt das Objekt aus C, blesst der C-Handler es direkt in DIESES Package.
      Der Speicher gehört Edje und wird von C nach dem Callback automatisch 
      gelöscht. Ein DESTROY hier würde Edjes internen Speicher zerstören.
   
   2. Erstellt Perl die Nachricht, erbt 'pEFL::Edje::Message::String' von 
      diesem Package, um die Methode str() mitnutzen zu können. Da Perl hier 
      der Owner ist, fängt das dortige DESTROY das Aufräumen sauber ab.
   ====================================================================== */

=cut
