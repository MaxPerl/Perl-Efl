package Efl::Elm;

use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

use Efl::Elm::Actionslider;
use Efl::Elm::Bg;
use Efl::Elm::Box;
use Efl::Elm::Bubble;
use Efl::Elm::Button;
use Efl::Elm::Calendar;
use Efl::Elm::Check;
use Efl::Elm::Colorselector;
use Efl::Elm::ColorselectorPaletteItem;
use Efl::Elm::Conformant;
use Efl::Elm::Ctxpopup;
use Efl::Elm::CtxpopupItem;
use Efl::Elm::Entry;
use Efl::Elm::Fileselector;
use Efl::Elm::Flip;
use Efl::Elm::Frame;
use Efl::Elm::Genlist;
use Efl::Elm::GenlistItem;
use Efl::Elm::GenlistItemClass;
use Efl::Elm::Glview;
use Efl::Elm::Grid;
use Efl::Elm::Hover;
use Efl::Elm::Hoversel;
use Efl::Elm::Icon;
use Efl::Elm::Image;
use Efl::Elm::Index;
use Efl::Elm::IndexItem;
use Efl::Elm::Inwin;
use Efl::Elm::Label;
use Efl::Elm::Layout;
use Efl::Elm::List;
use Efl::Elm::ListItem;
use Efl::Elm::Mapbuf;
use Efl::Elm::Menu;
use Efl::Elm::MenuItem;
use Efl::Elm::Naviframe;
use Efl::Elm::NaviframeItem;
use Efl::Elm::Notify;
use Efl::Elm::Object;
use Efl::Elm::ObjectItem;
use Efl::Elm::Panel;
use Efl::Elm::Panes;
use Efl::Elm::Photo;
use Efl::Elm::Photocam;
use Efl::Elm::Player;
use Efl::Elm::Popup;
use Efl::Elm::Progressbar;
use Efl::Elm::Radio;
use Efl::Elm::Scroller;
use Efl::Elm::SegmentControl;
use Efl::Elm::SegmentItem;
use Efl::Elm::Separator;
use Efl::Elm::Slider;
use Efl::Elm::Spinner;
use Efl::Elm::Table;
use Efl::Elm::Toolbar;
use Efl::Elm::ToolbarItem;
use Efl::Elm::Tooltip;
use Efl::Elm::Video;
use Efl::Elm::WidgetItem;
use Efl::Elm::Win;

our @ISA = qw(Exporter);

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
ELM_POLICY_QUIT
ELM_POLICY_EXIT
ELM_POLICY_THROTTLE
ELM_POLICY_LAST
ELM_POLICY_QUIT_NONE
ELM_POLICY_QUIT_LAST_WINDOW_CLOSED
ELM_POLICY_QUIT_LAST_WINDOW_HIDDEN
ELM_POLICY_EXIT_NONE
ELM_POLICY_EXIT_WINDOWS_DEL
ELM_POLICY_THROTTLE_CONFIG
ELM_POLICY_THROTTLE_HIDDEN_ALWAYS
ELM_POLICY_THROTTLE_NEVER
ELM_TEXT_FORMAT_PLAIN_UTF8
ELM_TEXT_FORMAT_MARKUP_UTF8
ELM_WRAP_NONE
ELM_WRAP_CHAR
ELM_WRAP_WORD
ELM_WRAP_MIXED
ELM_WRAP_LAST
ELM_OBJECT_SELECT_MODE_DEFAULT
ELM_OBJECT_SELECT_MODE_ALWAYS
ELM_OBJECT_SELECT_MODE_NONE
ELM_OBJECT_SELECT_MODE_DISPLAY_ONLY
ELM_OBJECT_SELECT_MODE_MAX
ELM_OBJECT_MULTI_SELECT_MODE_DEFAULT
ELM_OBJECT_MULTI_SELECT_MODE_WITH_CONTROL
ELM_OBJECT_MULTI_SELECT_MODE_MAX
ELM_LIST_COMPRESS
ELM_LIST_SCROLL
ELM_LIST_LIMIT
ELM_LIST_EXPAND
ELM_LIST_LAST
ELM_DAY_SUNDAY
ELM_DAY_MONDAY
ELM_DAY_TUESDAY
ELM_DAY_WEDNESDAY
ELM_DAY_THURSDAY
ELM_DAY_FRIDAY
ELM_DAY_SATURDAY
ELM_DAY_LAST
ELM_ACTIONSLIDER_NONE
ELM_ACTIONSLIDER_LEFT
ELM_ACTIONSLIDER_CENTER
ELM_ACTIONSLIDER_RIGHT
ELM_ACTIONSLIDER_ALL
ELM_BG_OPTION_CENTER
ELM_BG_OPTION_SCALE
ELM_BG_OPTION_STRETCH
ELM_BG_OPTION_TILE
ELM_BG_OPTION_LAST
ELM_BUBBLE_POS_INVALID
ELM_BUBBLE_POS_TOP_LEFT
ELM_BUBBLE_POS_TOP_RIGHT
ELM_BUBBLE_POS_BOTTOM_LEFT
ELM_BUBBLE_POS_BOTTOM_RIGHT
ELM_CALENDAR_UNIQUE
ELM_CALENDAR_DAILY
ELM_CALENDAR_WEEKLY
ELM_CALENDAR_MONTHLY
ELM_CALENDAR_ANNUALLY
ELM_CALENDAR_LAST_DAY_OF_MONTH
ELM_CALENDAR_REVERSE_DAILY
ELM_CALENDAR_SELECT_MODE_DEFAULT
ELM_CALENDAR_SELECT_MODE_ALWAYS
ELM_CALENDAR_SELECT_MODE_NONE
ELM_CALENDAR_SELECT_MODE_ONDEMAND
ELM_CALENDAR_SELECTABLE_NONE
ELM_CALENDAR_SELECTABLE_YEAR
ELM_CALENDAR_SELECTABLE_MONTH
ELM_CALENDAR_SELECTABLE_DAY
ELM_COLORSELECTOR_PALETTE
ELM_COLORSELECTOR_COMPONENTS
ELM_COLORSELECTOR_BOTH
ELM_COLORSELECTOR_PICKER
ELM_COLORSELECTOR_ALL
ELM_CTXPOPUP_DIRECTION_DOWN
ELM_CTXPOPUP_DIRECTION_RIGHT
ELM_CTXPOPUP_DIRECTION_LEFT
ELM_CTXPOPUP_DIRECTION_UP
ELM_CTXPOPUP_DIRECTION_UNKNOWN
ELM_INPUT_PANEL_LAYOUT_NORMAL_VARIATION_NORMAL
ELM_INPUT_PANEL_LAYOUT_NORMAL_VARIATION_FILENAME
ELM_INPUT_PANEL_LAYOUT_NORMAL_VARIATION_PERSON_NAME
ELM_INPUT_PANEL_LAYOUT_NUMBERONLY_VARIATION_NORMAL
ELM_INPUT_PANEL_LAYOUT_NUMBERONLY_VARIATION_SIGNED
ELM_INPUT_PANEL_LAYOUT_NUMBERONLY_VARIATION_DECIMAL
ELM_INPUT_PANEL_LAYOUT_NUMBERONLY_VARIATION_SIGNED_AND_DECIMAL
ELM_INPUT_PANEL_LAYOUT_PASSWORD_VARIATION_NORMAL
ELM_INPUT_PANEL_LAYOUT_PASSWORD_VARIATION_NUMBERONLY
ELM_FILESELECTOR_LIST
ELM_FILESELECTOR_GRID
ELM_FILESELECTOR_LAST
ELM_FILESELECTOR_SORT_BY_FILENAME_ASC
ELM_FILESELECTOR_SORT_BY_FILENAME_DESC
ELM_FILESELECTOR_SORT_BY_TYPE_ASC
ELM_FILESELECTOR_SORT_BY_TYPE_DESC
ELM_FILESELECTOR_SORT_BY_SIZE_ASC
ELM_FILESELECTOR_SORT_BY_SIZE_DESC
ELM_FILESELECTOR_SORT_BY_MODIFIED_ASC
ELM_FILESELECTOR_SORT_BY_MODIFIED_DESC
ELM_FILESELECTOR_SORT_LAST
ELM_FLIP_ROTATE_Y_CENTER_AXIS
ELM_FLIP_ROTATE_X_CENTER_AXIS
ELM_FLIP_ROTATE_XZ_CENTER_AXIS
ELM_FLIP_ROTATE_YZ_CENTER_AXIS
ELM_FLIP_CUBE_LEFT
ELM_FLIP_CUBE_RIGHT
ELM_FLIP_CUBE_UP
ELM_FLIP_CUBE_DOWN
ELM_FLIP_PAGE_LEFT
ELM_FLIP_PAGE_RIGHT
ELM_FLIP_PAGE_UP
ELM_FLIP_PAGE_DOWN
ELM_FLIP_CROSS_FADE
ELM_FLIP_INTERACTION_NONE
ELM_FLIP_INTERACTION_ROTATE
ELM_FLIP_INTERACTION_CUBE
ELM_FLIP_INTERACTION_PAGE
ELM_FLIP_DIRECTION_UP
ELM_FLIP_DIRECTION_DOWN
ELM_FLIP_DIRECTION_LEFT
ELM_FLIP_DIRECTION_RIGHT
ELM_GLVIEW_NONE
ELM_GLVIEW_ALPHA
ELM_GLVIEW_DEPTH
ELM_GLVIEW_STENCIL
ELM_GLVIEW_DIRECT
ELM_GLVIEW_CLIENT_SIDE_ROTATION
ELM_GLVIEW_DEPTH_8
ELM_GLVIEW_DEPTH_16
ELM_GLVIEW_DEPTH_24
ELM_GLVIEW_DEPTH_32
ELM_GLVIEW_STENCIL_1
ELM_GLVIEW_STENCIL_2
ELM_GLVIEW_STENCIL_4
ELM_GLVIEW_STENCIL_8
ELM_GLVIEW_STENCIL_16
ELM_GLVIEW_MULTISAMPLE_LOW
ELM_GLVIEW_MULTISAMPLE_MED
ELM_GLVIEW_MULTISAMPLE_HIGH
ELM_GLVIEW_RESIZE_POLICY_RECREATE
ELM_GLVIEW_RESIZE_POLICY_SCALE
ELM_GLVIEW_RENDER_POLICY_ON_DEMAND
ELM_GLVIEW_RENDER_POLICY_ALWAYS
ELM_HOVER_AXIS_NONE
ELM_HOVER_AXIS_HORIZONTAL
ELM_HOVER_AXIS_VERTICAL
ELM_HOVER_AXIS_BOTH
ELM_ICON_NONE
ELM_ICON_FILE
ELM_ICON_STANDARD
ELM_ICON_LOOKUP_THEME_FDO
ELM_ICON_LOOKUP_FDO
ELM_ICON_LOOKUP_THEME
ELM_IMAGE_ORIENT_NONE
ELM_IMAGE_ORIENT_0
ELM_IMAGE_ROTATE_90
ELM_IMAGE_ORIENT_90
ELM_IMAGE_ROTATE_180
ELM_IMAGE_ORIENT_180
ELM_IMAGE_ROTATE_270
ELM_IMAGE_ORIENT_270
ELM_IMAGE_FLIP_HORIZONTAL
ELM_IMAGE_FLIP_VERTICAL
ELM_IMAGE_FLIP_TRANSPOSE
ELM_IMAGE_FLIP_TRANSVERSE
ELM_LABEL_SLIDE_MODE_NONE
ELM_LABEL_SLIDE_MODE_AUTO
ELM_LABEL_SLIDE_MODE_ALWAYS
ELM_PANEL_ORIENT_TOP
ELM_PANEL_ORIENT_BOTTOM
ELM_PANEL_ORIENT_LEFT
ELM_PANEL_ORIENT_RIGHT
ELM_PHOTOCAM_ZOOM_MODE_MANUAL
ELM_PHOTOCAM_ZOOM_MODE_AUTO_FIT
ELM_PHOTOCAM_ZOOM_MODE_AUTO_FILL
ELM_PHOTOCAM_ZOOM_MODE_AUTO_FIT_IN
ELM_PHOTOCAM_ZOOM_MODE_LAST
ELM_POPUP_ORIENT_TOP
ELM_POPUP_ORIENT_CENTER
ELM_POPUP_ORIENT_BOTTOM
ELM_POPUP_ORIENT_LEFT
ELM_POPUP_ORIENT_RIGHT
ELM_POPUP_ORIENT_TOP_LEFT
ELM_POPUP_ORIENT_TOP_RIGHT
ELM_POPUP_ORIENT_BOTTOM_LEFT
ELM_POPUP_ORIENT_BOTTOM_RIGHT
ELM_POPUP_ORIENT_LAST
ELM_SCROLLER_POLICY_AUTO
ELM_SCROLLER_POLICY_ON
ELM_SCROLLER_POLICY_OFF
ELM_SCROLLER_POLICY_LAST
ELM_SCROLLER_SINGLE_DIRECTION_NONE
ELM_SCROLLER_SINGLE_DIRECTION_SOFT
ELM_SCROLLER_SINGLE_DIRECTION_HARD
ELM_SCROLLER_SINGLE_DIRECTION_LAST
ELM_SCROLLER_MOVEMENT_NO_BLOCK
ELM_SCROLLER_MOVEMENT_BLOCK_VERTICAL
ELM_SCROLLER_MOVEMENT_BLOCK_HORIZONTAL
ELM_SLIDER_INDICATOR_VISIBLE_MODE_DEFAULT
ELM_SLIDER_INDICATOR_VISIBLE_MODE_ALWAYS
ELM_SLIDER_INDICATOR_VISIBLE_MODE_ON_FOCUS
ELM_SLIDER_INDICATOR_VISIBLE_MODE_NONE
ELM_TOOLTIP_ORIENT_NONE 
ELM_TOOLTIP_ORIENT_TOP_LEFT
ELM_TOOLTIP_ORIENT_TOP
ELM_TOOLTIP_ORIENT_TOP_RIGHT
ELM_TOOLTIP_ORIENT_LEFT
ELM_TOOLTIP_ORIENT_CENTER
ELM_TOOLTIP_ORIENT_RIGHT
ELM_TOOLTIP_ORIENT_BOTTOM_LEFT
ELM_TOOLTIP_ORIENT_BOTTOM
ELM_TOOLTIP_ORIENT_BOTTOM_RIGHT
ELM_TOOLTIP_ORIENT_LAST
ELM_TOOLBAR_SHRINK_NONE
ELM_TOOLBAR_SHRINK_HIDE
ELM_TOOLBAR_SHRINK_SCROLL
ELM_TOOLBAR_SHRINK_MENU
ELM_TOOLBAR_SHRINK_EXPAND
ELM_TOOLBAR_ITEM_SCROLLTO_NONE
ELM_TOOLBAR_ITEM_SCROLLTO_IN
ELM_TOOLBAR_ITEM_SCROLLTO_FIRST
ELM_TOOLBAR_ITEM_SCROLLTO_MIDDLE
ELM_TOOLBAR_ITEM_SCROLLTO_LAST
ELM_WIN_INDICATOR_UNKNOWN
ELM_WIN_INDICATOR_HIDE
ELM_WIN_INDICATOR_SHOW
ELM_WIN_INDICATOR_OPACITY_UNKNOWN
ELM_WIN_INDICATOR_OPAQUE
ELM_WIN_INDICATOR_TRANSLUCENT
ELM_WIN_INDICATOR_TRANSPARENT
ELM_WIN_UNKNOWN
ELM_WIN_BASIC
ELM_WIN_DIALOG_BASIC
ELM_WIN_DESKTOP
ELM_WIN_DOCK
ELM_WIN_TOOLBAR
ELM_WIN_MENU
ELM_WIN_UTILITY
ELM_WIN_SPLASH
ELM_WIN_DROPDOWN_MENU
ELM_WIN_POPUP_MENU
ELM_WIN_TOOLTIP
ELM_WIN_NOTIFICATION
ELM_WIN_COMBO
ELM_WIN_DND
ELM_WIN_INLINED_IMAGE
ELM_WIN_SOCKET_IMAGE
ELM_WIN_NAVIFRAME_BASIC
ELM_WIN_KEYBOARD_UNKNOWN
ELM_WIN_KEYBOARD_OFF
ELM_WIN_KEYBOARD_ON
ELM_WIN_KEYBOARD_ALPHA
ELM_WIN_KEYBOARD_NUMERIC
ELM_WIN_KEYBOARD_PIN
ELM_WIN_KEYBOARD_PHONE_NUMBER
ELM_WIN_KEYBOARD_HEX
ELM_WIN_KEYBOARD_TERMINAL
ELM_WIN_KEYBOARD_PASSWORD
ELM_WIN_KEYBOARD_IP
ELM_WIN_KEYBOARD_HOST
ELM_WIN_KEYBOARD_FILE
ELM_WIN_KEYBOARD_URL
ELM_WIN_KEYBOARD_KEYPAD
ELM_WIN_KEYBOARD_J2ME
ELM_WIN_KEYGRAB_UNKNOWN
ELM_WIN_KEYGRAB_SHARED
ELM_WIN_KEYGRAB_TOPMOST
ELM_WIN_KEYGRAB_EXCLUSIVE
ELM_WIN_KEYGRAB_OVERRIDE_EXCLUSIVE
ELM_WIN_MOVE_RESIZE_MOVE
ELM_WIN_MOVE_RESIZE_TOP
ELM_WIN_MOVE_RESIZE_BOTTOM
ELM_WIN_MOVE_RESIZE_LEFT
ELM_WIN_MOVE_RESIZE_RIGHT
ELM_GENLIST_ITEM_NONE
ELM_GENLIST_ITEM_TREE
ELM_GENLIST_ITEM_GROUP
ELM_GENLIST_ITEM_MAX
ELM_GENLIST_ITEM_FIELD_ALL
ELM_GENLIST_ITEM_FIELD_TEXT
ELM_GENLIST_ITEM_FIELD_CONTENT
ELM_GENLIST_ITEM_FIELD_STATE
ELM_GENLIST_ITEM_SCROLLTO_NONE
ELM_GENLIST_ITEM_SCROLLTO_IN
ELM_GENLIST_ITEM_SCROLLTO_TOP
ELM_GENLIST_ITEM_SCROLLTO_MIDDLE
ELM_GENLIST_ITEM_SCROLLTO_BOTTOM	
);

require XSLoader;
XSLoader::load('Efl::Elm');

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

Efl::Elm 

=head1 SYNOPSIS

  Efl::Elm::init($#ARGV, \@ARGV);

  Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);
  my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
  $win->autodel_set(1);
  [...]
  $win->show();

  Efl::Elm::run();
  Efl::Elm::shutdown();

=head1 DESCRIPTION

Efl::Elm contains the "ELM_*" Constants.

Additional it contains the following general functions:

=over 4

=item Efl::Elm::init($#ARGV, \@ARGV);

=item Efl::Elm::quicklaunch_fallback($#ARGV, \@ARGV);

=item Efl::Elm::shutdown()

=item Efl::Elm::run();

=item Efl::Elm::exit();

=item Efl::Elm::policy_set(policy, value)

=back

=head2 EXPORT

None by default.


=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#elementary_main.html

=head1 AUTHOR

Maximilian Lika, E<lt>maximilian@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
