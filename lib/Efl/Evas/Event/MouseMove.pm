package Efl::Evas::Event::MouseMove;

use strict;
use warnings;

use Efl::Evas::Modifier;
use Efl::Evas::Lock;

require Exporter;

our @ISA = qw(Exporter EvasEventMouseMovePtr);

require XSLoader;
XSLoader::load('Efl::Evas::Event::MouseMove');


package EvasEventMouseMovePtr;



# Preloaded methods go here.

1;
__END__

=head1 NAME

Efl::Evas::Event::MouseMove

=head1 DESCRIPTION

This module is a perl binding to the struct Evas_Event_Mouse_Move.

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
