package pEFL::Evas::Polygon;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter EvasPolygonPtr);

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
XSLoader::load('pEFL::Evas::Polygon');

sub add {
    my ($class,$parent) = @_;
    my $widget = evas_object_polygon_add($parent);
    $widget->event_callback_add(pEFL::Evas::EVAS_CALLBACK_DEL(), \&pEFL::PLSide::cleanup, $widget);
    return $widget;
}

*new = \&add;

package EvasPolygonPtr;

our @ISA = qw(EvasObjectPtr);

# Preloaded methods go here.

1;
__END__

=head1 NAME

pEFL::Evas::Polygon

=head1 DESCRIPTION

This module is a perl binding to the Evas Polygon Object Functions.

It contains methods that operate on evas polygon objects.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Evas__Object__Polygon.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
