if  (eval {require ExtUtils::Constant; 1}) {
  # If you edit these definitions to change the constants used by this module,
  # you will need to use the generated const-c.inc and const-xs.inc
  # files to replace their "fallback" counterparts before distributing your
  # changes.
  my @names = (
	{name => 'ELM_POLICY_QUIT', 'macro' => 1},
	{name => 'ELM_POLICY_EXIT', 'macro' => 1},
	{name => 'ELM_POLICY_THROTTLE', 'macro' => 1},
	{name => 'ELM_POLICY_LAST', 'macro' => 1},
	{name => 'ELM_POLICY_QUIT_NONE', 'macro' => 1},
	{name => 'ELM_POLICY_QUIT_LAST_WINDOW_CLOSED', 'macro' => 1},
	{name => 'ELM_POLICY_QUIT_LAST_WINDOW_HIDDEN', 'macro' => 1},
	{name => 'ELM_POLICY_EXIT_NONE', 'macro' => 1},
	{name => 'ELM_POLICY_EXIT_WINDOWS_DEL', 'macro' => 1},
    {name => 'ELM_POLICY_THROTTLE_CONFIG', 'macro' => 1},
	{name => 'ELM_POLICY_THROTTLE_HIDDEN_ALWAYS', 'macro' => 1},
	{name => 'ELM_POLICY_THROTTLE_NEVER', 'macro' => 1},
	{name => 'ELM_TEXT_FORMAT_PLAIN_UTF8', 'macro' => 1},
	{name => 'ELM_TEXT_FORMAT_MARKUP_UTF8', 'macro' => 1},
	{name => 'ELM_WRAP_NONE', 'macro' => 1},
	{name => 'ELM_WRAP_CHAR', 'macro' => 1},
	{name => 'ELM_WRAP_WORD', 'macro' => 1},
	{name => 'ELM_WRAP_MIXED', 'macro' => 1},
	{name => 'ELM_WRAP_LAST', 'macro' => 1},
	{name => 'ELM_OBJECT_SELECT_MODE_DEFAULT', 'macro' => 1},
	{name => 'ELM_OBJECT_SELECT_MODE_ALWAYS', 'macro' => 1},
	{name => 'ELM_OBJECT_SELECT_MODE_NONE', 'macro' => 1},
	{name => 'ELM_OBJECT_SELECT_MODE_DISPLAY_ONLY', 'macro' => 1},
	{name => 'ELM_OBJECT_SELECT_MODE_MAX', 'macro' => 1},
	{name => 'ELM_OBJECT_MULTI_SELECT_MODE_DEFAULT', 'macro' => 1},
	{name => 'ELM_OBJECT_MULTI_SELECT_MODE_WITH_CONTROL', 'macro' => 1},
	{name => 'ELM_OBJECT_MULTI_SELECT_MODE_MAX', 'macro' => 1},
	{name => 'ELM_LIST_COMPRESS', 'macro' => 1},
	{name => 'ELM_LIST_SCROLL', 'macro' => 1},
	{name => 'ELM_LIST_LIMIT', 'macro' => 1},
	{name => 'ELM_LIST_EXPAND', 'macro' => 1},
	{name => 'ELM_LIST_LAST', 'macro' => 1},
	# From elm_calendar_eo.legacy.h:
	{name => 'ELM_DAY_SUNDAY', 'macro' => 1},
	{name => 'ELM_DAY_MONDAY', 'macro' => 1},
	{name => 'ELM_DAY_TUESDAY', 'macro' => 1},
	{name => 'ELM_DAY_WEDNESDAY', 'macro' => 1},
	{name => 'ELM_DAY_THURSDAY', 'macro' => 1},
	{name => 'ELM_DAY_FRIDAY', 'macro' => 1},
	{name => 'ELM_DAY_SATURDAY', 'macro' => 1},
	{name => 'ELM_DAY_LAST', 'macro' => 1},
	# ELM_Actionslider
	{name => 'ELM_ACTIONSLIDER_NONE', 'macro' => 1},
	{name => 'ELM_ACTIONSLIDER_LEFT', 'macro' => 1},
	{name => 'ELM_ACTIONSLIDER_CENTER', 'macro' => 1},
	{name => 'ELM_ACTIONSLIDER_RIGHT', 'macro' => 1},
	{name => 'ELM_ACTIONSLIDER_ALL', 'macro' => 1},
	# ELM_Bg
	{name => 'ELM_BG_OPTION_CENTER', 'macro' => 1},
	{name => 'ELM_BG_OPTION_SCALE', 'macro' => 1},
	{name => 'ELM_BG_OPTION_STRETCH', 'macro' => 1},
	{name => 'ELM_BG_OPTION_TILE', 'macro' => 1},
	{name => 'ELM_BG_OPTION_LAST', 'macro' => 1},
	# ELM_BUBBLE
	{name => 'ELM_BUBBLE_POS_INVALID', 'macro' => 1},
	{name => 'ELM_BUBBLE_POS_TOP_LEFT', 'macro' => 1},
	{name => 'ELM_BUBBLE_POS_TOP_RIGHT', 'macro' => 1},
	{name => 'ELM_BUBBLE_POS_BOTTOM_LEFT', 'macro' => 1},
	{name => 'ELM_BUBBLE_POS_BOTTOM_RIGHT', 'macro' => 1},
	# ELM_CALENDAR
	{name => 'ELM_CALENDAR_UNIQUE', 'macro' => 1},
	{name => 'ELM_CALENDAR_DAILY', 'macro' => 1},
	{name => 'ELM_CALENDAR_WEEKLY', 'macro' => 1},
	{name => 'ELM_CALENDAR_MONTHLY', 'macro' => 1},
	{name => 'ELM_CALENDAR_ANNUALLY', 'macro' => 1},
    {name => 'ELM_CALENDAR_LAST_DAY_OF_MONTH', 'macro' => 1},
	{name => 'ELM_CALENDAR_REVERSE_DAILY', 'macro' => 1},
    #
	{name => 'ELM_CALENDAR_SELECT_MODE_DEFAULT', 'macro' => 1},
	{name => 'ELM_CALENDAR_SELECT_MODE_ALWAYS', 'macro' => 1},
	{name => 'ELM_CALENDAR_SELECT_MODE_NONE', 'macro' => 1},
	{name => 'ELM_CALENDAR_SELECT_MODE_ONDEMAND', 'macro' => 1},
    #
	{name => 'ELM_CALENDAR_SELECTABLE_NONE', 'macro' => 1},
	{name => 'ELM_CALENDAR_SELECTABLE_YEAR', 'macro' => 1},
	{name => 'ELM_CALENDAR_SELECTABLE_MONTH', 'macro' => 1},
	{name => 'ELM_CALENDAR_SELECTABLE_DAY', 'macro' => 1},
	# ELM_COLORSELECTOR
	{name => 'ELM_COLORSELECTOR_PALETTE', 'macro' => 1},
	{name => 'ELM_COLORSELECTOR_COMPONENTS', 'macro' => 1},
	{name => 'ELM_COLORSELECTOR_BOTH', 'macro' => 1},
	{name => 'ELM_COLORSELECTOR_PICKER', 'macro' => 1},
	{name => 'ELM_COLORSELECTOR_ALL', 'macro' => 1},
	# ELM_CTXPOPUP
	{name => 'ELM_CTXPOPUP_DIRECTION_DOWN', 'macro' => 1},
	{name => 'ELM_CTXPOPUP_DIRECTION_RIGHT', 'macro' => 1},
	{name => 'ELM_CTXPOPUP_DIRECTION_LEFT', 'macro' => 1},
	{name => 'ELM_CTXPOPUP_DIRECTION_UP', 'macro' => 1},
	{name => 'ELM_CTXPOPUP_DIRECTION_UNKNOWN', 'macro' => 1},
	# ELM_ENTRY
	{name => 'ELM_INPUT_PANEL_LAYOUT_NORMAL_VARIATION_NORMAL', 'macro' => 1},
    {name => 'ELM_INPUT_PANEL_LAYOUT_NORMAL_VARIATION_FILENAME', 'macro' => 1},
    {name => 'ELM_INPUT_PANEL_LAYOUT_NORMAL_VARIATION_PERSON_NAME', 'macro' => 1},
    #
    {name => 'ELM_INPUT_PANEL_LAYOUT_NUMBERONLY_VARIATION_NORMAL', 'macro' => 1},
    {name => 'ELM_INPUT_PANEL_LAYOUT_NUMBERONLY_VARIATION_SIGNED', 'macro' => 1},
    {name => 'ELM_INPUT_PANEL_LAYOUT_NUMBERONLY_VARIATION_DECIMAL', 'macro' => 1},
    {name => 'ELM_INPUT_PANEL_LAYOUT_NUMBERONLY_VARIATION_SIGNED_AND_DECIMAL', 'macro' => 1},
    #
    {name => 'ELM_INPUT_PANEL_LAYOUT_PASSWORD_VARIATION_NORMAL', 'macro' => 1},
    {name => 'ELM_INPUT_PANEL_LAYOUT_PASSWORD_VARIATION_NUMBERONLY', 'macro' => 1},
	# ELM_FILESELECTOR
	{name => 'ELM_FILESELECTOR_LIST', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_GRID', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_LAST', 'macro' => 1},
    #
	{name => 'ELM_FILESELECTOR_SORT_BY_FILENAME_ASC', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_SORT_BY_FILENAME_DESC', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_SORT_BY_TYPE_ASC', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_SORT_BY_TYPE_DESC', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_SORT_BY_SIZE_ASC', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_SORT_BY_SIZE_DESC', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_SORT_BY_MODIFIED_ASC', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_SORT_BY_MODIFIED_DESC', 'macro' => 1},
	{name => 'ELM_FILESELECTOR_SORT_LAST', 'macro' => 1},
	# ELM_FLIP
	{name => 'ELM_FLIP_ROTATE_Y_CENTER_AXIS', 'macro' => 1},
	{name => 'ELM_FLIP_ROTATE_X_CENTER_AXIS', 'macro' => 1},
	{name => 'ELM_FLIP_ROTATE_XZ_CENTER_AXIS', 'macro' => 1},
	{name => 'ELM_FLIP_ROTATE_YZ_CENTER_AXIS', 'macro' => 1},
	{name => 'ELM_FLIP_CUBE_LEFT', 'macro' => 1},
	{name => 'ELM_FLIP_CUBE_RIGHT', 'macro' => 1},
	{name => 'ELM_FLIP_CUBE_UP', 'macro' => 1},
	{name => 'ELM_FLIP_CUBE_DOWN', 'macro' => 1},
	{name => 'ELM_FLIP_PAGE_LEFT', 'macro' => 1},
	{name => 'ELM_FLIP_PAGE_RIGHT', 'macro' => 1},
    {name => 'ELM_FLIP_PAGE_UP', 'macro' => 1},
	{name => 'ELM_FLIP_PAGE_DOWN', 'macro' => 1},
	{name => 'ELM_FLIP_CROSS_FADE', 'macro' => 1},
    #
    {name => 'ELM_FLIP_INTERACTION_NONE', 'macro' => 1},
    {name => 'ELM_FLIP_INTERACTION_ROTATE', 'macro' => 1},
	{name => 'ELM_FLIP_INTERACTION_CUBE', 'macro' => 1},
	{name => 'ELM_FLIP_INTERACTION_PAGE', 'macro' => 1},
    #
	{name => 'ELM_FLIP_DIRECTION_UP', 'macro' => 1},
    {name => 'ELM_FLIP_DIRECTION_DOWN', 'macro' => 1},
	{name => 'ELM_FLIP_DIRECTION_LEFT', 'macro' => 1},
	{name => 'ELM_FLIP_DIRECTION_RIGHT', 'macro' => 1},
	# GLVIEW
	{name => 'ELM_GLVIEW_NONE', 'macro' => 1},
	{name => 'ELM_GLVIEW_ALPHA', 'macro' => 1},
	{name => 'ELM_GLVIEW_DEPTH', 'macro' => 1},
	{name => 'ELM_GLVIEW_STENCIL', 'macro' => 1},
	{name => 'ELM_GLVIEW_DIRECT', 'macro' => 1},
	{name => 'ELM_GLVIEW_CLIENT_SIDE_ROTATION', 'macro' => 1},
	{name => 'ELM_GLVIEW_DEPTH_8', 'macro' => 1},
	{name => 'ELM_GLVIEW_DEPTH_16', 'macro' => 1},
	{name => 'ELM_GLVIEW_DEPTH_24', 'macro' => 1},
	{name => 'ELM_GLVIEW_DEPTH_32', 'macro' => 1},
	{name => 'ELM_GLVIEW_STENCIL_1', 'macro' => 1},
	{name => 'ELM_GLVIEW_STENCIL_2', 'macro' => 1},
	{name => 'ELM_GLVIEW_STENCIL_4', 'macro' => 1},
	{name => 'ELM_GLVIEW_STENCIL_8', 'macro' => 1},
	{name => 'ELM_GLVIEW_STENCIL_16', 'macro' => 1},
	{name => 'ELM_GLVIEW_MULTISAMPLE_LOW', 'macro' => 1},
	{name => 'ELM_GLVIEW_MULTISAMPLE_MED', 'macro' => 1},
	{name => 'ELM_GLVIEW_MULTISAMPLE_HIGH', 'macro' => 1},
    #
	{name => 'ELM_GLVIEW_RESIZE_POLICY_RECREATE', 'macro' => 1},
	{name => 'ELM_GLVIEW_RESIZE_POLICY_SCALE', 'macro' => 1},
    #
	{name => 'ELM_GLVIEW_RENDER_POLICY_ON_DEMAND', 'macro' => 1},
	{name => 'ELM_GLVIEW_RENDER_POLICY_ALWAYS', 'macro' => 1},
	# ELM_HOVER
	{name => 'ELM_HOVER_AXIS_NONE', 'macro' => 1},
	{name => 'ELM_HOVER_AXIS_HORIZONTAL', 'macro' => 1},
	{name => 'ELM_HOVER_AXIS_VERTICAL', 'macro' => 1},
	{name => 'ELM_HOVER_AXIS_BOTH', 'macro' => 1},
	# ELM_ICON
	{name => 'ELM_ICON_NONE', 'macro' => 1},
	{name => 'ELM_ICON_FILE', 'macro' => 1},
	{name => 'ELM_ICON_STANDARD', 'macro' => 1},
    #
	{name => 'ELM_ICON_LOOKUP_THEME_FDO', 'macro' => 1},
	{name => 'ELM_ICON_LOOKUP_FDO', 'macro' => 1},
	{name => 'ELM_ICON_LOOKUP_THEME', 'macro' => 1},
    # ELM_IMAGE
    {name => 'ELM_IMAGE_ORIENT_NONE', 'macro' => 1},
	{name => 'ELM_IMAGE_ORIENT_0', 'macro' => 1},
	{name => 'ELM_IMAGE_ROTATE_90', 'macro' => 1},
	{name => 'ELM_IMAGE_ORIENT_90', 'macro' => 1},
	{name => 'ELM_IMAGE_ROTATE_180', 'macro' => 1},
	{name => 'ELM_IMAGE_ORIENT_180', 'macro' => 1},
	{name => 'ELM_IMAGE_ROTATE_270', 'macro' => 1},
	{name => 'ELM_IMAGE_ORIENT_270', 'macro' => 1},
	{name => 'ELM_IMAGE_FLIP_HORIZONTAL', 'macro' => 1},
	{name => 'ELM_IMAGE_FLIP_VERTICAL', 'macro' => 1},
	{name => 'ELM_IMAGE_FLIP_TRANSPOSE', 'macro' => 1},
	{name => 'ELM_IMAGE_FLIP_TRANSVERSE', 'macro' => 1},
	# ELM_LABEL
	{name => 'ELM_LABEL_SLIDE_MODE_NONE', 'macro' => 1},
	{name => 'ELM_LABEL_SLIDE_MODE_AUTO', 'macro' => 1},
	{name => 'ELM_LABEL_SLIDE_MODE_ALWAYS', 'macro' => 1},
	# ELM_PANEL
	{name => 'ELM_PANEL_ORIENT_TOP', 'macro' => 1},
	{name => 'ELM_PANEL_ORIENT_BOTTOM', 'macro' => 1},
	{name => 'ELM_PANEL_ORIENT_LEFT', 'macro' => 1},
	{name => 'ELM_PANEL_ORIENT_RIGHT', 'macro' => 1},
	# ELM_PHOTOCAM
	{name => 'ELM_PHOTOCAM_ZOOM_MODE_MANUAL', 'macro' => 1},
	{name => 'ELM_PHOTOCAM_ZOOM_MODE_AUTO_FIT', 'macro' => 1},
	{name => 'ELM_PHOTOCAM_ZOOM_MODE_AUTO_FILL', 'macro' => 1},
	{name => 'ELM_PHOTOCAM_ZOOM_MODE_AUTO_FIT_IN', 'macro' => 1},
	{name => 'ELM_PHOTOCAM_ZOOM_MODE_LAST', 'macro' => 1},
	# ELM_POPUP
	{name => 'ELM_POPUP_ORIENT_TOP', 'macro' => 1},
	{name => 'ELM_POPUP_ORIENT_CENTER', 'macro' => 1},
	{name => 'ELM_POPUP_ORIENT_BOTTOM', 'macro' => 1},
	{name => 'ELM_POPUP_ORIENT_LEFT', 'macro' => 1},
	{name => 'ELM_POPUP_ORIENT_RIGHT', 'macro' => 1},
	{name => 'ELM_POPUP_ORIENT_TOP_LEFT', 'macro' => 1},
	{name => 'ELM_POPUP_ORIENT_TOP_RIGHT', 'macro' => 1},
	{name => 'ELM_POPUP_ORIENT_BOTTOM_LEFT', 'macro' => 1},
	{name => 'ELM_POPUP_ORIENT_BOTTOM_RIGHT', 'macro' => 1},
	{name => 'ELM_POPUP_ORIENT_LAST', 'macro' => 1},
	# ELM_SCROLLER
	{name => 'ELM_SCROLLER_POLICY_AUTO', 'macro' => 1},
	{name => 'ELM_SCROLLER_POLICY_ON', 'macro' => 1},
	{name => 'ELM_SCROLLER_POLICY_OFF', 'macro' => 1},
	{name => 'ELM_SCROLLER_POLICY_LAST', 'macro' => 1},
    #
	{name => 'ELM_SCROLLER_SINGLE_DIRECTION_NONE', 'macro' => 1},
	{name => 'ELM_SCROLLER_SINGLE_DIRECTION_SOFT', 'macro' => 1},
	{name => 'ELM_SCROLLER_SINGLE_DIRECTION_HARD', 'macro' => 1},
	{name => 'ELM_SCROLLER_SINGLE_DIRECTION_LAST', 'macro' => 1},
    #
	{name => 'ELM_SCROLLER_MOVEMENT_NO_BLOCK', 'macro' => 1},
	{name => 'ELM_SCROLLER_MOVEMENT_BLOCK_VERTICAL', 'macro' => 1},
	{name => 'ELM_SCROLLER_MOVEMENT_BLOCK_HORIZONTAL', 'macro' => 1},
	# ELM_SLIDER
	{name => 'ELM_SLIDER_INDICATOR_VISIBLE_MODE_DEFAULT', 'macro' => 1},
	{name => 'ELM_SLIDER_INDICATOR_VISIBLE_MODE_ALWAYS', 'macro' => 1},
	{name => 'ELM_SLIDER_INDICATOR_VISIBLE_MODE_ON_FOCUS', 'macro' => 1},
	{name => 'ELM_SLIDER_INDICATOR_VISIBLE_MODE_NONE', 'macro' => 1},
	# ELM_TOOLTIP
	{name => 'ELM_TOOLTIP_ORIENT_NONE', 'macro' => 1}, 
    {name => 'ELM_TOOLTIP_ORIENT_TOP_LEFT', 'macro' => 1},
    {name => 'ELM_TOOLTIP_ORIENT_TOP', 'macro' => 1},
    {name => 'ELM_TOOLTIP_ORIENT_TOP_RIGHT', 'macro' => 1},
    {name => 'ELM_TOOLTIP_ORIENT_LEFT', 'macro' => 1},
    {name => 'ELM_TOOLTIP_ORIENT_CENTER', 'macro' => 1},
    {name => 'ELM_TOOLTIP_ORIENT_RIGHT', 'macro' => 1},
    {name => 'ELM_TOOLTIP_ORIENT_BOTTOM_LEFT', 'macro' => 1},
    {name => 'ELM_TOOLTIP_ORIENT_BOTTOM', 'macro' => 1},
    {name => 'ELM_TOOLTIP_ORIENT_BOTTOM_RIGHT', 'macro' => 1},
    {name => 'ELM_TOOLTIP_ORIENT_LAST', 'macro' => 1},
    # ELM_TOOLBAR
    {name => 'ELM_TOOLBAR_SHRINK_NONE', 'macro' => 1},
	{name => 'ELM_TOOLBAR_SHRINK_HIDE', 'macro' => 1},
	{name => 'ELM_TOOLBAR_SHRINK_SCROLL', 'macro' => 1},
	{name => 'ELM_TOOLBAR_SHRINK_MENU', 'macro' => 1},
	{name => 'ELM_TOOLBAR_SHRINK_EXPAND', 'macro' => 1},
	# ELM_TOOLBARITEM
	{name => 'ELM_TOOLBAR_ITEM_SCROLLTO_NONE', 'macro' => 1},
	{name => 'ELM_TOOLBAR_ITEM_SCROLLTO_IN', 'macro' => 1},
	{name => 'ELM_TOOLBAR_ITEM_SCROLLTO_FIRST', 'macro' => 1},
	{name => 'ELM_TOOLBAR_ITEM_SCROLLTO_MIDDLE', 'macro' => 1},
	{name => 'ELM_TOOLBAR_ITEM_SCROLLTO_LAST', 'macro' => 1},
	# ELM_WIN
	{name => 'ELM_WIN_INDICATOR_UNKNOWN', 'macro' => 1},
	{name => 'ELM_WIN_INDICATOR_HIDE', 'macro' => 1},
	{name => 'ELM_WIN_INDICATOR_SHOW', 'macro' => 1},
    #
	{name => 'ELM_WIN_INDICATOR_OPACITY_UNKNOWN', 'macro' => 1},
	{name => 'ELM_WIN_INDICATOR_OPAQUE', 'macro' => 1},
	{name => 'ELM_WIN_INDICATOR_TRANSLUCENT', 'macro' => 1},
	{name => 'ELM_WIN_INDICATOR_TRANSPARENT', 'macro' => 1},
    #
	{name => 'ELM_WIN_UNKNOWN', 'macro' => 1},
	{name => 'ELM_WIN_BASIC', 'macro' => 1},
	{name => 'ELM_WIN_DIALOG_BASIC', 'macro' => 1},
	{name => 'ELM_WIN_DESKTOP', 'macro' => 1},
	{name => 'ELM_WIN_DOCK', 'macro' => 1},
	{name => 'ELM_WIN_TOOLBAR', 'macro' => 1},
	{name => 'ELM_WIN_MENU', 'macro' => 1},
	{name => 'ELM_WIN_UTILITY', 'macro' => 1},
	{name => 'ELM_WIN_SPLASH', 'macro' => 1},
	{name => 'ELM_WIN_DROPDOWN_MENU', 'macro' => 1},
	{name => 'ELM_WIN_POPUP_MENU', 'macro' => 1},
	{name => 'ELM_WIN_TOOLTIP', 'macro' => 1},
	{name => 'ELM_WIN_NOTIFICATION', 'macro' => 1},
	{name => 'ELM_WIN_COMBO', 'macro' => 1},
    #
	{name => 'ELM_WIN_DND', 'macro' => 1},
	{name => 'ELM_WIN_INLINED_IMAGE', 'macro' => 1},
	{name => 'ELM_WIN_SOCKET_IMAGE', 'macro' => 1},
	{name => 'ELM_WIN_NAVIFRAME_BASIC', 'macro' => 1},
    #
	{name => 'ELM_WIN_KEYBOARD_UNKNOWN', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_OFF', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_ON', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_ALPHA', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_NUMERIC', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_PIN', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_PHONE_NUMBER', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_HEX', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_TERMINAL', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_PASSWORD', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_IP', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_HOST', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_FILE', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_URL', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_KEYPAD', 'macro' => 1},
	{name => 'ELM_WIN_KEYBOARD_J2ME', 'macro' => 1},
    #
    {name => 'ELM_WIN_KEYGRAB_UNKNOWN', 'macro' => 1},
	{name => 'ELM_WIN_KEYGRAB_SHARED', 'macro' => 1},
	{name => 'ELM_WIN_KEYGRAB_TOPMOST', 'macro' => 1},
	{name => 'ELM_WIN_KEYGRAB_EXCLUSIVE', 'macro' => 1},
	{name => 'ELM_WIN_KEYGRAB_OVERRIDE_EXCLUSIVE', 'macro' => 1},
    #
	{name => 'ELM_WIN_MOVE_RESIZE_MOVE', 'macro' => 1},
	{name => 'ELM_WIN_MOVE_RESIZE_TOP', 'macro' => 1},
	{name => 'ELM_WIN_MOVE_RESIZE_BOTTOM', 'macro' => 1},
	{name => 'ELM_WIN_MOVE_RESIZE_LEFT', 'macro' => 1},
	{name => 'ELM_WIN_MOVE_RESIZE_RIGHT', 'macro' => 1},
	# ELM_GENLIST_ITEM
	{name => 'ELM_GENLIST_ITEM_NONE', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_TREE', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_GROUP', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_MAX', 'macro' => 1},
	#
	{name => 'ELM_GENLIST_ITEM_FIELD_ALL', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_FIELD_TEXT', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_FIELD_CONTENT', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_FIELD_STATE', 'macro' => 1},
	#
	{name => 'ELM_GENLIST_ITEM_SCROLLTO_NONE', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_SCROLLTO_IN', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_SCROLLTO_TOP', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_SCROLLTO_MIDDLE', 'macro' => 1},
	{name => 'ELM_GENLIST_ITEM_SCROLLTO_BOTTOM', 'macro' => 1},
	);


  ExtUtils::Constant::WriteConstants(
                                     NAME         => 'Efl::Elm',
                                     NAMES        => \@names,
                                     DEFAULT_TYPE => 'IV',
                                     C_FILE       => 'lib/Efl/const-c.inc',
                                     XS_FILE      => 'lib/Efl/const-xs.inc',
                                  );
    my @names_evas = (
        # EVAS
        {name => 'EVAS_HINT_EXPAND', 'macro' => 1},
        {name => 'EVAS_HINT_FILL', 'macro' => 1},
        #
        {name => 'EVAS_BUTTON_DOUBLE_CLICK', 'macro' => 1},
        {name => 'EVAS_BUTTON_TRIPLE_CLICK', 'macro' => 1},
        #
        {name => 'EVAS_FONT_HINTING_NONE', 'macro' => 1},
        {name => 'EVAS_FONT_HINTING_AUTO', 'macro' => 1},
        {name => 'EVAS_FONT_HINTING_BYTECODE', 'macro' => 1},
        #
        {name => 'EVAS_NATIVE_SURFACE_NONE', 'macro' => 1},
        {name => 'EVAS_NATIVE_SURFACE_X11', 'macro' => 1},
        {name => 'EVAS_NATIVE_SURFACE_OPENGL', 'macro' => 1},
        {name => 'EVAS_NATIVE_SURFACE_WL', 'macro' => 1},
        {name => 'EVAS_NATIVE_SURFACE_TBM', 'macro' => 1},
        {name => 'EVAS_NATIVE_SURFACE_EVASGL', 'macro' => 1},
        {name => 'EVAS_NATIVE_SURFACE_WL_DMABUF', 'macro' => 1},
        #
        {name => 'EVAS_NATIVE_SURFACE_STATUS_SCANOUT_ON', 'macro' => 1},
        {name => 'EVAS_NATIVE_SURFACE_STATUS_SCANOUT_OFF', 'macro' => 1},
        {name => 'EVAS_NATIVE_SURFACE_STATUS_PLANE_ASSIGN', 'macro' => 1},
        {name => 'EVAS_NATIVE_SURFACE_STATUS_PLANE_RELEASE', 'macro' => 1},
        #
        {name => 'EVAS_IMAGE_ORIENT_NONE', 'macro' => 1},
        {name => 'EVAS_IMAGE_ORIENT_0', 'macro' => 1},
        {name => 'EVAS_IMAGE_ORIENT_90', 'macro' => 1},
        {name => 'EVAS_IMAGE_ORIENT_180', 'macro' => 1},
        {name => 'EVAS_IMAGE_ORIENT_270', 'macro' => 1},
        {name => 'EVAS_IMAGE_FLIP_HORIZONTAL', 'macro' => 1},
        {name => 'EVAS_IMAGE_FLIP_VERTICAL', 'macro' => 1},
        {name => 'EVAS_IMAGE_FLIP_TRANSPOSE', 'macro' => 1},
        {name => 'EVAS_IMAGE_FLIP_TRANSVERSE', 'macro' => 1},
        # TODO: Wrong namespace....????
        #EFL_GFX_FILL_REFLECT
        #EFL_GFX_FILL_REPEAT
        #EFL_GFX_FILL_RESTRICT
        #EFL_GFX_FILL_RESTRICT_REFLECT
        #EFL_GFX_FILL_RESTRICT_REPEAT
        #EFL_GFX_FILL_PAD
        #
        {name => 'EVAS_BORDER_FILL_NONE', 'macro' => 1},
        {name => 'EVAS_BORDER_FILL_DEFAULT', 'macro' => 1},
        {name => 'EVAS_BORDER_FILL_SOLID', 'macro' => 1},
        #
        {name => 'EVAS_VIDEO_SURFACE_MOVE', 'macro' => 1},
        {name => 'EVAS_VIDEO_SURFACE_RESIZE', 'macro' => 1},
        {name => 'EVAS_VIDEO_SURFACE_CLIP', 'macro' => 1},
        {name => 'EVAS_VIDEO_SURFACE_BELOW', 'macro' => 1},
        {name => 'EVAS_VIDEO_SURFACE_STACKING_CHECK', 'macro' => 1},
        {name => 'EVAS_VIDEO_SURFACE_IGNORE_WINDOW', 'macro' => 1},
        #
        {name => 'EVAS_LOAD_ERROR_NONE', 'macro' => 1},
        {name => 'EVAS_LOAD_ERROR_GENERIC', 'macro' => 1},
        {name => 'EVAS_LOAD_ERROR_DOES_NOT_EXIST', 'macro' => 1},
        {name => 'EVAS_LOAD_ERROR_PERMISSION_DENIED', 'macro' => 1},
        {name => 'EVAS_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED', 'macro' => 1},
        {name => 'EVAS_LOAD_ERROR_CORRUPT_FILE', 'macro' => 1},
        {name => 'EVAS_LOAD_ERROR_UNKNOWN_FORMAT', 'macro' => 1},
        {name => 'EVAS_LOAD_ERROR_CANCELLED', 'macro' => 1},
        #
        {name => 'EVAS_IMAGE_CONTENT_HINT_NONE', 'macro' => 1},
        {name => 'EVAS_IMAGE_CONTENT_HINT_DYNAMIC', 'macro' => 1},
        {name => 'EVAS_IMAGE_CONTENT_HINT_STATIC', 'macro' => 1},
        #
        {name => 'EVAS_DISPLAY_MODE_NONE', 'macro' => 1},
        {name => 'EVAS_DISPLAY_MODE_COMPRESS', 'macro' => 1},
        {name => 'EVAS_DISPLAY_MODE_EXPAND', 'macro' => 1},
        {name => 'EVAS_DISPLAY_MODE_DONT_CHANGE', 'macro' => 1},
        #
        {name => 'EVAS_RENDER_BLEND', 'macro' => 1},
        {name => 'EVAS_RENDER_COPY', 'macro' => 1},
        # EVAS_CALLBACKS
        {name => 'EVAS_CALLBACK_MOUSE_IN', 'macro' => 1},
		{name => 'EVAS_CALLBACK_MOUSE_OUT', 'macro' => 1},
		{name => 'EVAS_CALLBACK_MOUSE_DOWN', 'macro' => 1},
		{name => 'EVAS_CALLBACK_MOUSE_UP', 'macro' => 1},
		{name => 'EVAS_CALLBACK_MOUSE_MOVE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_MOUSE_WHEEL', 'macro' => 1},
		{name => 'EVAS_CALLBACK_MULTI_DOWN', 'macro' => 1},
		{name => 'EVAS_CALLBACK_MULTI_UP', 'macro' => 1},
		{name => 'EVAS_CALLBACK_MULTI_MOVE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_FREE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_KEY_DOWN', 'macro' => 1},
		{name => 'EVAS_CALLBACK_KEY_UP', 'macro' => 1},
		{name => 'EVAS_CALLBACK_FOCUS_IN', 'macro' => 1},
		{name => 'EVAS_CALLBACK_FOCUS_OUT', 'macro' => 1},
		{name => 'EVAS_CALLBACK_SHOW', 'macro' => 1},
		{name => 'EVAS_CALLBACK_HIDE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_MOVE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_RESIZE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_RESTACK', 'macro' => 1},
		{name => 'EVAS_CALLBACK_DEL', 'macro' => 1},
		{name => 'EVAS_CALLBACK_HOLD', 'macro' => 1},
		{name => 'EVAS_CALLBACK_CHANGED_SIZE_HINTS', 'macro' => 1},
		{name => 'EVAS_CALLBACK_IMAGE_PRELOADED', 'macro' => 1},
		{name => 'EVAS_CALLBACK_CANVAS_FOCUS_IN', 'macro' => 1},
		{name => 'EVAS_CALLBACK_CANVAS_FOCUS_OUT', 'macro' => 1},
		{name => 'EVAS_CALLBACK_RENDER_FLUSH_PRE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_RENDER_FLUSH_POST', 'macro' => 1},
		{name => 'EVAS_CALLBACK_CANVAS_OBJECT_FOCUS_IN', 'macro' => 1},
		{name => 'EVAS_CALLBACK_CANVAS_OBJECT_FOCUS_OUT', 'macro' => 1},
		{name => 'EVAS_CALLBACK_IMAGE_UNLOADED', 'macro' => 1},
		{name => 'EVAS_CALLBACK_RENDER_PRE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_RENDER_POST', 'macro' => 1},
		{name => 'EVAS_CALLBACK_IMAGE_RESIZE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_DEVICE_CHANGED', 'macro' => 1},
		{name => 'EVAS_CALLBACK_AXIS_UPDATE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_CANVAS_VIEWPORT_RESIZE', 'macro' => 1},
		{name => 'EVAS_CALLBACK_LAST', 'macro' => 1},
		# EVAS TEXT
		{name => 'EVAS_TEXT_STYLE_PLAIN', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SHADOW', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_OUTLINE', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SOFT_OUTLINE', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_GLOW', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_OUTLINE_SHADOW', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_FAR_SHADOW', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_OUTLINE_SOFT_SHADOW', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SOFT_SHADOW', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_FAR_SOFT_SHADOW', 'macro' => 1},
		#
		{name => 'EVAS_TEXT_STYLE_SHADOW_DIRECTION_BOTTOM_RIGHT', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SHADOW_DIRECTION_BOTTOM', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SHADOW_DIRECTION_BOTTOM_LEFT', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SHADOW_DIRECTION_LEFT', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SHADOW_DIRECTION_TOP_LEFT', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SHADOW_DIRECTION_TOP', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SHADOW_DIRECTION_TOP_RIGHT', 'macro' => 1},
		{name => 'EVAS_TEXT_STYLE_SHADOW_DIRECTION_RIGHT', 'macro' => 1},
		#
		{name => 'EVAS_BIDI_DIRECTION_NEUTRAL', 'macro' => 1},
		{name => 'EVAS_BIDI_DIRECTION_NATURAL', 'macro' => 1},
		{name => 'EVAS_BIDI_DIRECTION_LTR', 'macro' => 1},     
		{name => 'EVAS_BIDI_DIRECTION_RTL', 'macro' => 1},     
		{name => 'EVAS_BIDI_DIRECTION_INHERIT', 'macro' => 1},
		#
		{name => 'EVAS_TEXTBLOCK_TEXT_RAW', 'macro' => 1},
		{name => 'EVAS_TEXTBLOCK_TEXT_PLAIN', 'macro' => 1},
		{name => 'EVAS_TEXTBLOCK_TEXT_MARKUP', 'macro' => 1},
		#
		{name => 'EVAS_TEXTBLOCK_CURSOR_UNDER', 'macro' => 1},
		{name => 'EVAS_TEXTBLOCK_CURSOR_BEFORE', 'macro' => 1},
    );
    
    ExtUtils::Constant::WriteConstants(
                                     NAME         => 'Efl::Evas',
                                     NAMES        => \@names_evas,
                                     DEFAULT_TYPE => 'IV',
                                     C_FILE       => 'lib/Efl/const-evas-c.inc',
                                     XS_FILE      => 'lib/Efl/const-evas-xs.inc',
                                  );
my @names_ecore = (
    {name => 'ECORE_VERSION_MAJOR', 'macro' => 1},
    {name => 'ECORE_VERSION_MINOR', 'macro' => 1},
    #
    {name => 'ECORE_CALLBACK_CANCEL', 'macro' => 1},
    {name => 'ECORE_CALLBACK_RENEW', 'macro' => 1},
    #
    {name => 'ECORE_CALLBACK_PASS_ON', 'macro' => 1},
    {name => 'ECORE_CALLBACK_DONE', 'macro' => 1},
    # TODO: IN Poller.xs
    {name => 'ECORE_POLLER_CORE', 'macro' => 1},
    # Ecore Event
    {name => 'ECORE_EVENT_NONE'},
	{name => 'ECORE_EVENT_SIGNAL_USER'},
	{name => 'ECORE_EVENT_SIGNAL_HUP'},
	{name => 'ECORE_EVENT_SIGNAL_EXIT'},
	{name => 'ECORE_EVENT_SIGNAL_POWER'},
	{name => 'ECORE_EVENT_SIGNAL_REALTIME'},
	{name => 'ECORE_EVENT_MEMORY_STATE'},
	{name => 'ECORE_EVENT_POWER_STATE'},
	{name => 'ECORE_EVENT_LOCALE_CHANGED'},
	{name => 'ECORE_EVENT_HOSTNAME_CHANGED'},
	{name => 'ECORE_EVENT_SYSTEM_TIMEDATE_CHANGED'},
	{name => 'ECORE_EVENT_COUNT'},
	#
	{name => 'ECORE_EVENT_KEY_DOWN', 'macro' => 1},
	{name => 'ECORE_EVENT_KEY_UP', 'macro' => 1},
	{name => 'ECORE_EVENT_MOUSE_BUTTON_DOWN', 'macro' => 1},
	{name => 'ECORE_EVENT_MOUSE_BUTTON_UP', 'macro' => 1},
	{name => 'ECORE_EVENT_MOUSE_MOVE', 'macro' => 1},
	{name => 'ECORE_EVENT_MOUSE_WHEEL', 'macro' => 1},
	{name => 'ECORE_EVENT_MOUSE_IN', 'macro' => 1},
	{name => 'ECORE_EVENT_MOUSE_OUT', 'macro' => 1},
    );
    
    ExtUtils::Constant::WriteConstants(
                                     NAME         => 'Efl::Ecore',
                                     NAMES        => \@names_ecore,
                                     DEFAULT_TYPE => 'IV',
                                     C_FILE       => 'lib/Efl/const-ecore-c.inc',
                                     XS_FILE      => 'lib/Efl/const-ecore-xs.inc',
                                  );
}
else {
  use File::Copy;
  use File::Spec;
  foreach my $file ('const-c.inc', 'const-xs.inc') {
    my $fallback = File::Spec->catfile('fallback', $file);
    copy ($fallback, $file) or die "Can't copy $fallback to $file: $!";
  }
}
