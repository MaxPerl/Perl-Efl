package pEFL::PerlEvent;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter PerlEventPtr);

require XSLoader;
XSLoader::load('pEFL::PerlEvent');


package PerlEventPtr;



# Preloaded methods go here.

1;
__END__

=head1 NAME

pEFL::PerlEvent

=head1 DESCRIPTION

This gives acces to a struct that saves a SV* in a perl event (e.g. by pEFL::Ecore::Event::add_pv or pEFL::Evas::Object::smart_call_pv())

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
