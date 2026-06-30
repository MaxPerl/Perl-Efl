package pEFL::PerlSmartClass;

use strict;
use warnings;

use Carp;

require Exporter;

our @ISA = qw(Exporter PerlSmartClassPtr);

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
PERLSMARTCLASS_BASE_NONE
PERLSMARTCLASS_BASE_CLIPPED
);

require XSLoader;
XSLoader::load('pEFL::PerlSmartClass');

sub register_class {
	my ($sc, $class,$base) = @_;
	
	# Nur einmal pro Package erlaubt
	no strict 'refs';
	if (defined ${"${class}::_SMART_CLASS"}) {
		warn "register_class: $class already registered, returning existing class\n";
		return ${"${class}::_SMART_CLASS"};
	}
	
	my %functions;
	
	$functions{add} = $class->can("_add") if $class->can("_add");
	$functions{del} = $class->can("_del") if $class->can("_del");
	$functions{move} = $class->can("_move") if $class->can("_move");
	$functions{resize} = $class->can("_resize") if $class->can("_resize");
	$functions{show} = $class->can("_show") if $class->can("_show");
	$functions{hide} = $class->can("_hide") if $class->can("_hide");
	$functions{color_set} = $class->can("_color_set") if $class->can("_color_set");
	$functions{clip_set} = $class->can("_clip_set") if $class->can("_clip_set");
	$functions{clip_unset} = $class->can("_clip_unset") if $class->can("_clip_unset");
	$functions{calculate} = $class->can("_calculate") if $class->can("_calculate");
	$functions{member_add} = $class->can("_member_add") if $class->can("_member_add");
	$functions{member_del} = $class->can("_member_del") if $class->can("_member_del");
		
	# _perl_smartclass_new ist XS-Funktion in PerlSmartClassPtr-Package
	# also müssen wir sie direkt aufrufen:
	my $perl_sc = _perl_smartclass_new($class, \%functions, $base);
    
    	# DESTROY der neuen PerlSmartClass darf erst am Programmende aufgerufen
	# werden!!! Deshalb speichern wir $perl_sc auch noch als Package Variable
	# So ist es irrelevant, falls die zurückgegebene Referenz $perl_sc einmal
	# out-of-scope gerät. Eine Referenz der PerlSmartClass lebt immer weiter
	# bis zum Programmende
    	${"${class}::_SMART_CLASS"} = $perl_sc;
    
	return $perl_sc;
}

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.

    my $constname;
    our $AUTOLOAD;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "&Callback::constant not defined" if $constname eq 'constant';
    my ($error, $val) = constant($constname);
    if ($error) { croak $error; }
    {
	no strict 'refs';
	# Fixed between 5.005_53 and 5.005_61
#XXX	if ($] >= 5.00561) {
#XXX	    *$AUTOLOAD = sub () { $val };
#XXX	}
#XXX	else {
	    *$AUTOLOAD = sub { $val };
#XXX	}
    }
    goto &$AUTOLOAD;
}

package PerlSmartClassPtr;

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
