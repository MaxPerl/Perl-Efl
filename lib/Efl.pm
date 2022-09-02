package Efl;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Efl ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
    
);

our $VERSION = '0.68';

require XSLoader;
XSLoader::load('Efl', $VERSION);

# Preloaded methods go here.

our $Debug = 0;


1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Efl - Perl bindings for the Enlightenment Foundation Libraries

=head1 SYNOPSIS

  use Efl;
  [...]

=head1 DESCRIPTION

Perl bindings for the Enlightenment Foundation Libraries (EFL). The module gives a nice object-oriented interface. Apart from that the API is deliberatly kept close to the Elementary API. The perl method names generally remove the prefix at the beginning of the c functions. Therefore applying the C documentation should be no problem. 

For the documentation in detail please study the single modules and the documentation at https://www.enlightenment.org/docs/start

=head1 SPECIFICS OF THE BINDING

=head2 Perl specific variants of methods (_pv, "perl value"-methods)

If a method returns an Eina_List there usually is a version with the suffix _pv (for perl value) that returns a perl array (for example in Efl::Elm::List the method items_get_pv()). It is recommended to use these perl adjusted methods. If you find a method, where the adaption is missing, please open an issue.

Sometimes a method returns an EvasObject which can be any Elm Widget Type (e.g. $nav->item_pop(), $object->content_get, $object_item->content_get). In this case there will be a "perl value" version that tries to bless the return variant to the appropriate perl class, too (e.g. $naviframe->item_pop_pv(), $object->[part_]content_get_pv, $object_item->[part_]content_get_pv).

=head2 Output Parameters

Efl uses sometimes output parameters. See for example C<void elm_calendar_min_max_year_get(Evas_Object *obj,int *min,int *max)>, where you have to pass in C a pointer to max and min. In perl this is translated to my C<($min, $max) = $calendar->min_max_year_get();>. Sometimes the C function returns a status or similar as in C<Eina_Bool> elm_entry_cursor_geometry_get(Evas_Object *obj,int *x,int *y,int *w,int *h)>. In Perl this status variable is given, too. So the function elm_entry_cursor_geometry_get for example is translated into C<my ($status,$x,$y,$w,$h) = $entry->cursor_geometry_get;>.

=head1 FUNCTIONS IN EFL

The Efl modules gives you the following functions:

=over 4

=item Efl::ev_info2s($ev_info) - if event info is a string, this function converts the void pointer to a perl string

=item Efl::ev_info2obj($ev_info, "Efl::Evas::Event::MouseUp") - if event info is a c stuct, this function converts the void pointer to a perl scalar, that is blessed to the given class. The perl class gives the necessary methods to get the members of the struc. At the moment the following c structs are (among others) supported:

=over 8

=item Elm_Entry_Anchor_Info (aka Efl::Elm::EntryAnchorInfo)

=item Elm_Image_Progress (aka Efl::Elm::ImageProgress)

=item Elm_Panel_Scroll_Info (aka Efl::Elm::PanelScrollInfo)

=item Evas_Coord_Rectangle (aka Efl::Evas::Coord::Rectangle)

=item Evas_Event_Mouse_Down (aka Efl::Evas::Event::MouseDown)

=item Evas_Event_Mouse_Up (aka Efl::Evas::Event::MouseUp)

=item Evas_Event_Mouse_In (aka Efl::Evas::Event::MouseIn)

=item Evas_Event_Mouse_Out (aka Efl::Evas::Event::MouseOut)

=item Evas_Event_Mouse_Move (aka Efl::Evas::Event::MouseMove)

=item Evas_Event_Mouse_Wheel (aka Efl::Evas::Event::MouseWheel)

=back

=back

Some events pass an Elementary Widget or an Evas Object as event info. Of course you can use ev_info2obj to convert these pointers to a appropiate blessed perl scalar, too. See for instance examples/colorselector.pl, where the Elm Widget Itemq Elm_Colorselector_Palette_Item is passed as event_info. This must converted by Efl::ev_info2obj($ev_info, "Efl::Elm::ColorselectorPaletteItem"); 

The provision of perl classes for event_info c structs is work in progress. If you need a specific binding for a c struct that is not supported at the moment, please send an issue report.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/docs/start

https://github.com/MaxPerl/Perl-Efl

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
