package pEFL::Ecore::Event;

use strict;
use warnings;

require Exporter;

use pEFL::PLSide;

our @ISA = qw(Exporter EcoreEventPtr);

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
XSLoader::load('pEFL::Ecore::Event');


# Preloaded methods go here.

1;
__END__

=head1 NAME

pEFL::Ecore::Event

=head1 DESCRIPTION

This module is a perl binding to the Ecore_Event functions.


=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Ecore__Event__Group.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut