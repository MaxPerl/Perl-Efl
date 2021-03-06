package Efl::Evas::Canvas;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter EvasCanvasPtr);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Efl::Elm ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(

) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(

);

require XSLoader;
XSLoader::load('Efl::Evas::Canvas');

# sub new {
#    my ($class,$parent) = @_;
#    my $widget = elm_bg_add($parent);
#    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup, $widget);
#    return $widget;
#}

# *new = \&add;

package EvasCanvasPtr;

our @ISA = qw(EvasObjectPtr);

# Preloaded methods go here.

1;
__END__

=head1 NAME

Efl::Evas::Canvas

=head1 DESCRIPTION

This module is a perl binding to the Evas Canvas.

Evas is a clean display canvas API for several target display systems that can
draw anti-aliased text, smooth super- und sub-sampled scaled images, alpha-blend
objects and more.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#evas_main.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
