package Efl::Evas::TextblockCursor;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter EvasTextblockCursorPtr);

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
XSLoader::load('Efl::Evas::TextblockCursor');

sub new {
    my ($class,$parent) = @_;
    my $widget = evas_object_textblock_cursor_new($parent);
    #$widget->smart_callback_add("del", \&Efl::PLSide::cleanup, $widget);
    return $widget;
}


package EvasTextblockCursorPtr;

use Efl::Eina;

sub range_formats_get_pv {
	my ($obj) = @_;
    my $list = $obj->range_formats_get();
    my @array = Efl::Eina::list2array($list,"EvasTextblockNodeFormat");
    return @array;
}

sub range_geometry_get_pv {
	my ($obj) = @_;
    my $list = $obj->range_geometry_get();
    my @array = Efl::Eina::list2array($list,"EvasRectangle");
    return @array;
}

#our @ISA = qw(EvasObjectPtr);

# Preloaded methods go here.

1;
__END__

=head1 NAME

Efl::Evas::TextblockCursor

=head1 DESCRIPTION

This module is a perl binding to Evas_Textblock_Cursor.

A Efl::Evas::TextblockCursor is used to manipulate the cursor of an evas textblock.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Evas__Object__Textblock__Group.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
