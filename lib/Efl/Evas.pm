package Efl::Evas;

use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

use Scalar::Util qw(refaddr blessed);

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
);

our $VERSION = '0.01';

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

require XSLoader;
XSLoader::load('Efl::Evas', $VERSION);

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Evas - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Evas;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Evas, created by h2xs. It looks like the
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
