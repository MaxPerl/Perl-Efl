#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <Evas.h>

typedef Evas_Smart_Class EvasSmartClass;
typedef Evas_Smart EvasSmart;


MODULE = pEFL::Evas::Smart		PACKAGE = pEFL::Evas::Smart     

EvasSmart*
evas_smart_class_new(EvasSmartClass* sc)

MODULE = pEFL::Evas::Smart		PACKAGE = EvasSmartPtr     PREFIX = evas_smart_

void
evas_smart_free(s)
	EvasSmart *s

const EvasSmartClass*
evas_smart_class_get(s)
	const EvasSmart *s
	
void *
evas_smart_data_get(s)
	const EvasSmart *s

	
# Folgende Funktionen scheinen für pEFL keinen Anwendungsfall zu haben
# Wir lassen sie daher weg:

# evas_smart_class_inherit_full 
# arg: Vererbung geht bei uns mit evas_object_smart_clipped_smart_set();
# bzw. auf Perl Seite mit @ISA

# evas_smart_callbacks_descriptions_get()	
# evas_smart_callback_description_find()
# arg: Beide Funktionen sind für introspection nützlich. Das spielt
# für usnere Perl-Klasse keine Rolle
	
int
evas_smart_usage_get(s)
	const EvasSmart *s
