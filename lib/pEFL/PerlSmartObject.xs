#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>
#include "PLSmart.h"

typedef Evas_Object EvasObject;
typedef Evas_Canvas EvasCanvas;
typedef Evas_Smart_Class EvasSmartClass;

MODULE = pEFL::PerlSmartObject		PACKAGE = pEFL::PerlSmartObject	

MODULE = pEFL::PerlSmartObject		PACKAGE = PerlSmartObjectPtr

PerlSmartObject *
_evas_object_smart_add(evas, perl_sc)
	EvasCanvas *evas
	PerlSmartClass *perl_sc
PREINIT:
	Evas_Smart *smart;
CODE:
	smart = perl_sc->evas_smart;
	RETVAL = (PerlSmartObject *) evas_object_smart_add(evas, smart);
OUTPUT:
	RETVAL

# In Perl ist $self ein geblesstes PerlSmartObjectPtr (= My::Button).
# In XS schreiben wir aber Evas_Object* als Typ, NICHT PerlSmartObject*.
# Warum? Weil der tatsächliche C-Pointer der im SV steckt (abgelegt via
# sv_setref_pv(s_obj, pclass, o) in perl_smart_add) ein Evas_Object* ist
# - also ein opaker EFL-interner Typ.
# PerlSmartObject* ist dagegen unsere Instanz-Struct (mit base als erstem
# Feld) - ein völlig anderer Pointer, der über evas_object_smart_data_get(o)
# geholt wird, NICHT der Wert der im SV steckt.
# Kurz: T_PTROBJ liest den rohen Pointer aus dem SV - und der ist ein
# Evas_Object*, egal wie das Objekt in Perl geblesst ist.
EvasSmartClass *
parent_sc(obj)
    EvasObject *obj
CODE:
    Evas_Smart *smart = evas_object_smart_smart_get(obj);
    PerlSmartClass *perl_sc = (PerlSmartClass *)evas_smart_data_get(smart);
	RETVAL = &perl_sc->parent_sc;
OUTPUT:
    RETVAL
