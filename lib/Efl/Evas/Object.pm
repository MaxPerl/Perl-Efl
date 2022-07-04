package Efl::Evas::Object;

use strict;
use warnings;

require Exporter;

use Efl::Evas;
use Efl::PLSide;
use Scalar::Util qw(blessed refaddr);

our @ISA = qw(Exporter EvasObjectPtr);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Elm2 ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

require XSLoader;
XSLoader::load('Efl::Evas::Object');


package EvasObjectPtr;

use Scalar::Util qw(blessed refaddr);

our @ISA = qw();


sub smart_callback_add {
    my ($obj, $event, $func, $data) = @_;
    
    Efl::PLSide::register_smart_cb( $obj, $event, $func, $data);
    
    $obj->_evas_object_smart_callback_add($event, $func, $obj, $data);
    
}

sub smart_callback_del {
    my ($obj, $event, $func) = @_;
    
    my $objaddr = refaddr($obj);
    my $funcaddr = refaddr($func);
    my $funcname = Efl::PLSide::get_func_name($func);
    my $key = "$event###$funcname";
    
    my $cstructaddr = $Efl::PLSide::Callbacks{$objaddr}{$key}{cstructaddr};
    
    my $success = $obj->_evas_object_smart_callback_del_full($event,$func,$cstructaddr);
    
    # Delete the callback on the Perl side
    delete($Efl::PLSide::Callbacks{$objaddr}{$key});
}

sub event_callback_add {
    my ($obj, $event, $func, $data) = @_;
    
    Efl::PLSide::register_smart_cb( $obj, $event, $func, $data);
    
    $obj->_evas_object_event_callback_add($event, $func, $data);
    
}

sub event_callback_del {
    my ($obj, $event, $func) = @_;
    
    my $objaddr = refaddr($obj);
    my $funcaddr = refaddr($func);
    my $key = "$event###$funcaddr";
    
    my $cstructaddr = $Efl::PLSide::Callbacks{$objaddr}{$key}{cstructaddr};
    
    my $success = $obj->_evas_object_event_callback_del_full($event,$func,$cstructaddr);
    
    # Delete the callback on the Perl side
    delete($Efl::PLSide::Callbacks{$objaddr}{$key});
}




# Preloaded methods go here.

1;
__END__

=head1 NAME

Efl::Evas::Object

=head1 DESCRIPTION

This module is a perl binding to the Evas General Object Functions and Evas Smart Object funtions. It contains funtions
and methods that manipulate generic Evas Objects, and functions dealing with Evas smart objects / instances (methods with
the prefix smart_*).  

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Evas__Object__Group.html

https://www.enlightenment.org/develop/legacy/api/c/start#group__Evas__Smart__Object__Group.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
