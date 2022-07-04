package Efl::Evas::Event::MouseUp;

use strict;
use warnings;

use Efl::Evas::Modifier;
use Efl::Evas::Lock;

require Exporter;

our @ISA = qw(Exporter EvasEventMouseUpPtr);

require XSLoader;
XSLoader::load('Efl::Evas::Event::MouseUp');

# sub add {
#    my ($class,$parent) = @_;
#    my $widget = evas_object_rectangle_add($parent);
#    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup, $widget);
#    return $widget;
#}

# *new = \&add;

package EvasEventMouseUpPtr;



# Preloaded methods go here.

1;
__END__

=head1 NAME

Efl::Evas::Event::MouseUp

=head1 DESCRIPTION

This module is a perl binding to the struct Evas_Event_Mouse_Up.

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
