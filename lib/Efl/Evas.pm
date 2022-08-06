package Efl::Evas;

use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

use Scalar::Util qw(refaddr blessed);

use Efl::Evas::Canvas;
use Efl::Evas::Image;
use Efl::Evas::Line;
use Efl::Evas::Lock;
use Efl::Evas::Modifier;
use Efl::Evas::Object;
use Efl::Evas::Polygon;
use Efl::Evas::Rectangle;
use Efl::Evas::Text;
use Efl::Evas::Textblock;
use Efl::Evas::TextblockCursor;
use Efl::Evas::TextblockNodeFormat;
use Efl::Evas::TextblockStyle;

use Efl::Evas::Coord::Rectangle;

use Efl::Evas::Event::Hold;
use Efl::Evas::Event::KeyDown;
use Efl::Evas::Event::KeyUp;
use Efl::Evas::Event::MouseDown;
use Efl::Evas::Event::MouseIn;
use Efl::Evas::Event::MouseMove;
use Efl::Evas::Event::MouseOut;
use Efl::Evas::Event::MouseUp;
use Efl::Evas::Event::MouseWheel;


our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Evas ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
EVAS_HINT_EXPAND
EVAS_HINT_FILL
EVAS_BUTTON_DOUBLE_CLICK
EVAS_BUTTON_TRIPLE_CLICK
EVAS_FONT_HINTING_NONE
EVAS_FONT_HINTING_AUTO
EVAS_FONT_HINTING_BYTECODE
EVAS_NATIVE_SURFACE_NONE
EVAS_NATIVE_SURFACE_X11
EVAS_NATIVE_SURFACE_OPENGL
EVAS_NATIVE_SURFACE_WL
EVAS_NATIVE_SURFACE_TBM
EVAS_NATIVE_SURFACE_EVASGL
EVAS_NATIVE_SURFACE_WL_DMABUF
EVAS_NATIVE_SURFACE_STATUS_SCANOUT_ON
EVAS_NATIVE_SURFACE_STATUS_SCANOUT_OFF
EVAS_NATIVE_SURFACE_STATUS_PLANE_ASSIGN
EVAS_NATIVE_SURFACE_STATUS_PLANE_RELEASE
EVAS_IMAGE_ORIENT_NONE
EVAS_IMAGE_ORIENT_0
EVAS_IMAGE_ORIENT_90
EVAS_IMAGE_ORIENT_180
EVAS_IMAGE_ORIENT_270
EVAS_IMAGE_FLIP_HORIZONTAL
EVAS_IMAGE_FLIP_VERTICAL
EVAS_IMAGE_FLIP_TRANSPOSE
EVAS_IMAGE_FLIP_TRANSVERSE
EVAS_BORDER_FILL_NONE
EVAS_BORDER_FILL_DEFAULT
EVAS_BORDER_FILL_SOLID
EVAS_VIDEO_SURFACE_MOVE
EVAS_VIDEO_SURFACE_RESIZE
EVAS_VIDEO_SURFACE_CLIP
EVAS_VIDEO_SURFACE_BELOW
EVAS_VIDEO_SURFACE_STACKING_CHECK
EVAS_VIDEO_SURFACE_IGNORE_WINDOW
EVAS_LOAD_ERROR_NONE
EVAS_LOAD_ERROR_GENERIC
EVAS_LOAD_ERROR_DOES_NOT_EXIST
EVAS_LOAD_ERROR_PERMISSION_DENIED
EVAS_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED
EVAS_LOAD_ERROR_CORRUPT_FILE
EVAS_LOAD_ERROR_UNKNOWN_FORMAT
EVAS_LOAD_ERROR_CANCELLED
EVAS_IMAGE_CONTENT_HINT_NONE
EVAS_IMAGE_CONTENT_HINT_DYNAMIC
EVAS_IMAGE_CONTENT_HINT_STATIC
EVAS_DISPLAY_MODE_NONE
EVAS_DISPLAY_MODE_COMPRESS
EVAS_DISPLAY_MODE_EXPAND
EVAS_DISPLAY_MODE_DONT_CHANGE
EVAS_RENDER_BLEND
EVAS_RENDER_COPY
EVAS_CALLBACK_MOUSE_IN
EVAS_CALLBACK_MOUSE_OUT
EVAS_CALLBACK_MOUSE_DOWN
EVAS_CALLBACK_MOUSE_UP
EVAS_CALLBACK_MOUSE_MOVE
EVAS_CALLBACK_MOUSE_WHEEL
EVAS_CALLBACK_MULTI_DOWN
EVAS_CALLBACK_MULTI_UP
EVAS_CALLBACK_MULTI_MOVE
EVAS_CALLBACK_FREE
EVAS_CALLBACK_KEY_DOWN
EVAS_CALLBACK_KEY_UP
EVAS_CALLBACK_FOCUS_IN
EVAS_CALLBACK_FOCUS_OUT
EVAS_CALLBACK_SHOW
EVAS_CALLBACK_HIDE
EVAS_CALLBACK_MOVE
EVAS_CALLBACK_RESIZE
EVAS_CALLBACK_RESTACK
EVAS_CALLBACK_DEL
EVAS_CALLBACK_HOLD
EVAS_CALLBACK_CHANGED_SIZE_HINTS
EVAS_CALLBACK_IMAGE_PRELOADED
EVAS_CALLBACK_CANVAS_FOCUS_IN
EVAS_CALLBACK_CANVAS_FOCUS_OUT
EVAS_CALLBACK_RENDER_FLUSH_PRE
EVAS_CALLBACK_RENDER_FLUSH_POST
EVAS_CALLBACK_CANVAS_OBJECT_FOCUS_IN
EVAS_CALLBACK_CANVAS_OBJECT_FOCUS_OUT
EVAS_CALLBACK_IMAGE_UNLOADED
EVAS_CALLBACK_RENDER_PRE
EVAS_CALLBACK_RENDER_POST
EVAS_CALLBACK_IMAGE_RESIZE
EVAS_CALLBACK_DEVICE_CHANGED
EVAS_CALLBACK_AXIS_UPDATE
EVAS_CALLBACK_CANVAS_VIEWPORT_RESIZE
EVAS_CALLBACK_LAST
EVAS_TEXT_STYLE_PLAIN
EVAS_TEXT_STYLE_SHADOW
EVAS_TEXT_STYLE_OUTLINE
EVAS_TEXT_STYLE_SOFT_OUTLINE
EVAS_TEXT_STYLE_GLOW
EVAS_TEXT_STYLE_OUTLINE_SHADOW
EVAS_TEXT_STYLE_FAR_SHADOW
EVAS_TEXT_STYLE_OUTLINE_SOFT_SHADOW
EVAS_TEXT_STYLE_SOFT_SHADOW
EVAS_TEXT_STYLE_FAR_SOFT_SHADOW
EVAS_TEXT_STYLE_SHADOW_DIRECTION_BOTTOM_RIGHT
EVAS_TEXT_STYLE_SHADOW_DIRECTION_BOTTOM
EVAS_TEXT_STYLE_SHADOW_DIRECTION_BOTTOM_LEFT
EVAS_TEXT_STYLE_SHADOW_DIRECTION_LEFT
EVAS_TEXT_STYLE_SHADOW_DIRECTION_TOP_LEFT
EVAS_TEXT_STYLE_SHADOW_DIRECTION_TOP
EVAS_TEXT_STYLE_SHADOW_DIRECTION_TOP_RIGHT
EVAS_TEXT_STYLE_SHADOW_DIRECTION_RIGHT
EVAS_BIDI_DIRECTION_NEUTRAL
EVAS_BIDI_DIRECTION_NATURAL
EVAS_BIDI_DIRECTION_LTR     
EVAS_BIDI_DIRECTION_RTL     
EVAS_BIDI_DIRECTION_INHERIT
EVAS_TEXTBLOCK_TEXT_RAW
EVAS_TEXTBLOCK_TEXT_PLAIN
EVAS_TEXTBLOCK_TEXT_MARKUP
EVAS_TEXTBLOCK_CURSOR_UNDER
EVAS_TEXTBLOCK_CURSOR_BEFORE
);

require XSLoader;
XSLoader::load('Efl::Evas');

# Preloaded methods go here.

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.

    my $constname;
    our $AUTOLOAD;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "&Callback::constant not defined" if $constname eq 'constant';
    my ($error, $val) = constant($constname);
    if ($error) { croak $error; }
    {
	no strict 'refs';
	# Fixed between 5.005_53 and 5.005_61
#XXX	if ($] >= 5.00561) {
#XXX	    *$AUTOLOAD = sub () { $val };
#XXX	}
#XXX	else {
	    *$AUTOLOAD = sub { $val };
#XXX	}
    }
    goto &$AUTOLOAD;
}

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Efl::Evas

=head1 DESCRIPTION

Evas is a clean display canvas API for several target display systems that can draw anti-aliased text, 
smooth super- and sub-sampled scaled images, alpha-blend objects and more.

This module exports the constants in the EVAS_* name space. The following constants can be used:

=over 4

=item EVAS_HINT_EXPAND

=item EVAS_HINT_FILL
        
=item EVAS_BUTTON_DOUBLE_CLICK

=item EVAS_BUTTON_TRIPLE_CLICK
        
=item EVAS_FONT_HINTING_NONE

=item EVAS_FONT_HINTING_AUTO

=item EVAS_FONT_HINTING_BYTECODE
        
=item EVAS_NATIVE_SURFACE_NONE

=item EVAS_NATIVE_SURFACE_X11

=item EVAS_NATIVE_SURFACE_OPENGL

=item EVAS_NATIVE_SURFACE_WL

=item EVAS_NATIVE_SURFACE_TBM

=item EVAS_NATIVE_SURFACE_EVASGL

=item EVAS_NATIVE_SURFACE_WL_DMABUF
        
=item EVAS_NATIVE_SURFACE_STATUS_SCANOUT_ON

=item EVAS_NATIVE_SURFACE_STATUS_SCANOUT_OFF

=item EVAS_NATIVE_SURFACE_STATUS_PLANE_ASSIGN

=item EVAS_NATIVE_SURFACE_STATUS_PLANE_RELEASE
        
=item EVAS_IMAGE_ORIENT_NONE

=item EVAS_IMAGE_ORIENT_0

=item EVAS_IMAGE_ORIENT_90

=item EVAS_IMAGE_ORIENT_180

=item EVAS_IMAGE_ORIENT_270

=item EVAS_IMAGE_FLIP_HORIZONTAL

=item EVAS_IMAGE_FLIP_VERTICAL

=item EVAS_IMAGE_FLIP_TRANSPOSE

=item EVAS_IMAGE_FLIP_TRANSVERSE

=item EVAS_BORDER_FILL_NONE

=item EVAS_BORDER_FILL_DEFAULT

=item EVAS_BORDER_FILL_SOLID

=item EVAS_VIDEO_SURFACE_MOVE

=item EVAS_VIDEO_SURFACE_RESIZE

=item EVAS_VIDEO_SURFACE_CLIP

=item EVAS_VIDEO_SURFACE_BELOW

=item EVAS_VIDEO_SURFACE_STACKING_CHECK

=item EVAS_VIDEO_SURFACE_IGNORE_WINDOW

=item EVAS_LOAD_ERROR_NONE

=item EVAS_LOAD_ERROR_GENERIC

=item EVAS_LOAD_ERROR_DOES_NOT_EXIST

=item EVAS_LOAD_ERROR_PERMISSION_DENIED

=item EVAS_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED

=item EVAS_LOAD_ERROR_CORRUPT_FILE

=item EVAS_LOAD_ERROR_UNKNOWN_FORMAT

=item EVAS_LOAD_ERROR_CANCELLED

=item EVAS_IMAGE_CONTENT_HINT_NONE

=item EVAS_IMAGE_CONTENT_HINT_DYNAMIC

=item EVAS_IMAGE_CONTENT_HINT_STATIC

=item EVAS_DISPLAY_MODE_NONE

=item EVAS_DISPLAY_MODE_COMPRESS

=item EVAS_DISPLAY_MODE_EXPAND

=item EVAS_DISPLAY_MODE_DONT_CHANGE

=item EVAS_RENDER_BLEND

=item EVAS_RENDER_COPY

=item EVAS_CALLBACK_MOUSE_IN

=item EVAS_CALLBACK_MOUSE_OUT

=item EVAS_CALLBACK_MOUSE_DOWN

=item EVAS_CALLBACK_MOUSE_UP

=item EVAS_CALLBACK_MOUSE_MOVE

=item EVAS_CALLBACK_MOUSE_WHEEL

=item EVAS_CALLBACK_MULTI_DOWN

=item EVAS_CALLBACK_MULTI_UP

=item EVAS_CALLBACK_MULTI_MOVE

=item EVAS_CALLBACK_FREE

=item EVAS_CALLBACK_KEY_DOWN

=item EVAS_CALLBACK_KEY_UP

=item EVAS_CALLBACK_FOCUS_IN

=item EVAS_CALLBACK_FOCUS_OUT

=item EVAS_CALLBACK_SHOW

=item EVAS_CALLBACK_HIDE

=item EVAS_CALLBACK_MOVE

=item EVAS_CALLBACK_RESIZE

=item EVAS_CALLBACK_RESTACK

=item EVAS_CALLBACK_DEL

=item EVAS_CALLBACK_HOLD

=item EVAS_CALLBACK_CHANGED_SIZE_HINTS

=item EVAS_CALLBACK_IMAGE_PRELOADED

=item EVAS_CALLBACK_CANVAS_FOCUS_IN

=item EVAS_CALLBACK_CANVAS_FOCUS_OUT

=item EVAS_CALLBACK_RENDER_FLUSH_PRE

=item EVAS_CALLBACK_RENDER_FLUSH_POST

=item EVAS_CALLBACK_CANVAS_OBJECT_FOCUS_IN

=item EVAS_CALLBACK_CANVAS_OBJECT_FOCUS_OUT

=item EVAS_CALLBACK_IMAGE_UNLOADED

=item EVAS_CALLBACK_RENDER_PRE

=item EVAS_CALLBACK_RENDER_POST

=item EVAS_CALLBACK_IMAGE_RESIZE

=item EVAS_CALLBACK_DEVICE_CHANGED

=item EVAS_CALLBACK_AXIS_UPDATE

=item EVAS_CALLBACK_CANVAS_VIEWPORT_RESIZE

=item EVAS_CALLBACK_LAST

=item EVAS_TEXT_STYLE_PLAIN

=item EVAS_TEXT_STYLE_SHADOW

=item EVAS_TEXT_STYLE_OUTLINE

=item EVAS_TEXT_STYLE_SOFT_OUTLINE

=item EVAS_TEXT_STYLE_GLOW

=item EVAS_TEXT_STYLE_OUTLINE_SHADOW

=item EVAS_TEXT_STYLE_FAR_SHADOW

=item EVAS_TEXT_STYLE_OUTLINE_SOFT_SHADOW

=item EVAS_TEXT_STYLE_SOFT_SHADOW

=item EVAS_TEXT_STYLE_FAR_SOFT_SHADOW

=item EVAS_TEXT_STYLE_SHADOW_DIRECTION_BOTTOM_RIGHT

=item EVAS_TEXT_STYLE_SHADOW_DIRECTION_BOTTOM

=item EVAS_TEXT_STYLE_SHADOW_DIRECTION_BOTTOM_LEFT

=item EVAS_TEXT_STYLE_SHADOW_DIRECTION_LEFT

=item EVAS_TEXT_STYLE_SHADOW_DIRECTION_TOP_LEFT

=item EVAS_TEXT_STYLE_SHADOW_DIRECTION_TOP

=item EVAS_TEXT_STYLE_SHADOW_DIRECTION_TOP_RIGHT

=item EVAS_TEXT_STYLE_SHADOW_DIRECTION_RIGHT

=item EVAS_BIDI_DIRECTION_NEUTRAL

=item EVAS_BIDI_DIRECTION_NATURAL

=item EVAS_BIDI_DIRECTION_LTR     

=item EVAS_BIDI_DIRECTION_RTL     

=item EVAS_BIDI_DIRECTION_INHERIT

=item EVAS_TEXTBLOCK_TEXT_RAW

=item EVAS_TEXTBLOCK_TEXT_PLAIN

=item EVAS_TEXTBLOCK_TEXT_MARKUP

=item EVAS_TEXTBLOCK_CURSOR_UNDER

=item EVAS_TEXTBLOCK_CURSOR_BEFORE

=back

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
