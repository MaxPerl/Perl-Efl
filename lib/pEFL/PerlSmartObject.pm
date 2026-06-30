package pEFL::PerlSmartObject;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter PerlSmartObjectPtr);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use pEFL::Elm ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(

) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(

);

require XSLoader;
XSLoader::load('pEFL::PerlSmartObject');


package PerlSmartObjectPtr;

use pEFL::Evas;

use Carp qw(croak);

our @ISA = qw(EvasObjectPtr);

sub add {
	my ($class, $evas, $smart) = @_;
	
	croak "$class must inherit from PerlSmartObjectPtr"
        unless $class->isa('PerlSmartObjectPtr');
	
	my $perl_smart_obj = _evas_object_smart_add($evas,$smart);
	
	# Set up the private Perl Hash for the object
	# die Methode pclass kann erst nach dem _add die pclass zurückgeben
	# Der Aufwand, das anders zu gestalten, ist zu groß und wahrscheinlich ist
	# das auch vollkomment überflüssig
	my $objaddr = $$perl_smart_obj;
	$pEFL::PLSide::PerlSmartObjects{$objaddr}->{pclass} = $smart->pclass();
	
	# Automatischer Cleanup - analog zu allen Elm-Widgets
    $perl_smart_obj->event_callback_add(
        EVAS_CALLBACK_DEL, \&pEFL::PLSide::cleanup, $perl_smart_obj
    );
    $perl_smart_obj->event_callback_add(
        EVAS_CALLBACK_DEL, \&pEFL::PLSide::cleanup_signals, $perl_smart_obj
    );
    $perl_smart_obj->event_callback_add(
        EVAS_CALLBACK_DEL, \&cleanup_perl_smartobject, $perl_smart_obj
    );
	
	return $perl_smart_obj;
}

sub pclass {
	my ($obj) = @_;
	my $objaddr = $$obj;
	return $pEFL::PLSide::PerlSmartObjects{$objaddr}->{pclass};
}

sub data_get {
	my ($obj) = @_;
	my $objaddr = $$obj;
	return $pEFL::PLSide::PerlSmartObjects{$objaddr}->{data};
}

sub data_set {
	my ($obj, $data) = @_;
	my $objaddr = $$obj;
	my $olddata = $pEFL::PLSide::PerlSmartObjects{$objaddr}->{data};
	$pEFL::PLSide::PerlSmartObjects{$objaddr}->{data} = $data;
	return $olddata;
}

sub cleanup_perl_smartobject {
	my ($widget) = @_;
	my $objaddr = $$widget;
	warn "Cleanup private data hash of PerlSmartObject with adress $objaddr\n" if ($pEFL::Debug);
	delete($pEFL::PLSide::PerlSmartObjects{$objaddr});
}

# Preloaded methods go here.

1;
__END__

=head1 NAME

pEFL::Evas::Smart

=head1 DESCRIPTION

This module is a perl binding to the Evas Smart.

Functions that deal with Evas_Smart structs, creating definition (classes) of objects that will have customized behavior for methods like evas_object_move(), evas_object_resize(), evas_object_clip_set() and others. 

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Evas__Smart__Group.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
