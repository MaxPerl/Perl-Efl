package Efl::Evas::Rectangle;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter EvasRectanglePtr);

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
XSLoader::load('Efl::Evas::Rectangle');

sub add {
    my ($class,$parent) = @_;
    my $widget = evas_object_rectangle_add($parent);
    #$widget->smart_callback_add("del", \&Efl::PLSide::cleanup, $widget);
    return $widget;
}

*new = \&add;

package EvasRectanglePtr;

use Efl::Evas::Object;

our @ISA = qw(EvasObjectPtr);

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Efl::Elm - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Efl::Elm;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Efl::Elm, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Maximilian Lika, E<lt>maximilian@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
