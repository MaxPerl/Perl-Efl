package pEFL::Evas::Event::KeyUp;

use strict;
use warnings;

use pEFL::Evas::Modifier;
use pEFL::Evas::Lock;

require Exporter;

our @ISA = qw(Exporter EvasEventKeyUpPtr);

require XSLoader;
XSLoader::load('pEFL::Evas::Event::KeyUp');


package EvasEventKeyUpPtr;



# Preloaded methods go here.

1;
__END__

=head1 NAME

pEFL::Evas::Event::KeyUp

=head1 DESCRIPTION

This module is a perl binding to the struct Evas_Event_Key_Up.

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
