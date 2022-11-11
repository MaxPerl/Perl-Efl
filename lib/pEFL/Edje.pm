package pEFL::Edje;

use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

use pEFL::Evas;
use pEFL::Edje::Object;

our @ISA = qw(Exporter);

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
EDJE_CURSOR_MAIN
EDJE_CURSOR_SELECTION_BEGIN
EDJE_CURSOR_SELECTION_END
EDJE_CURSOR_PREEDIT_START
EDJE_CURSOR_PREEDIT_END
EDJE_CURSOR_USER
EDJE_CURSOR_USER_EXTRA
EDJE_TEXT_AUTOCAPITAL_TYPE_NONE
EDJE_TEXT_AUTOCAPITAL_TYPE_WORD
EDJE_TEXT_AUTOCAPITAL_TYPE_SENTENCE
EDJE_TEXT_AUTOCAPITAL_TYPE_ALLCHARACTER
EDJE_INPUT_HINT_NONE
EDJE_INPUT_HINT_AUTO_COMPLETE  
EDJE_INPUT_HINT_SENSITIVE_DATA
EDJE_INPUT_PANEL_LANG_AUTOMATIC
EDJE_INPUT_PANEL_LANG_ALPHABET
EDJE_INPUT_PANEL_RETURN_KEY_TYPE_DEFAULT
EDJE_INPUT_PANEL_RETURN_KEY_TYPE_DONE
EDJE_INPUT_PANEL_RETURN_KEY_TYPE_GO
EDJE_INPUT_PANEL_RETURN_KEY_TYPE_JOIN
EDJE_INPUT_PANEL_RETURN_KEY_TYPE_LOGIN
EDJE_INPUT_PANEL_RETURN_KEY_TYPE_NEXT
EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEARCH
EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SEND
EDJE_INPUT_PANEL_RETURN_KEY_TYPE_SIGNIN
EDJE_INPUT_PANEL_LAYOUT_NORMAL
EDJE_INPUT_PANEL_LAYOUT_NUMBER
EDJE_INPUT_PANEL_LAYOUT_EMAIL
EDJE_INPUT_PANEL_LAYOUT_URL
EDJE_INPUT_PANEL_LAYOUT_PHONENUMBER
EDJE_INPUT_PANEL_LAYOUT_IP
EDJE_INPUT_PANEL_LAYOUT_MONTH
EDJE_INPUT_PANEL_LAYOUT_NUMBERONLY
EDJE_INPUT_PANEL_LAYOUT_INVALID
EDJE_INPUT_PANEL_LAYOUT_HEX
EDJE_INPUT_PANEL_LAYOUT_TERMINAL
EDJE_INPUT_PANEL_LAYOUT_PASSWORD
EDJE_INPUT_PANEL_LAYOUT_DATETIME
EDJE_INPUT_PANEL_LAYOUT_EMOTICON
EDJE_INPUT_PANEL_LAYOUT_VOICE
EDJE_CHANNEL_EFFECT
EDJE_CHANNEL_BACKGROUND
EDJE_CHANNEL_MUSIC
EDJE_CHANNEL_FOREGROUND
EDJE_CHANNEL_INTERFACE
EDJE_CHANNEL_INPUT
EDJE_CHANNEL_ALERT
EDJE_CHANNEL_ALL
EDJE_EXTERNAL_PARAM_TYPE_INT
EDJE_EXTERNAL_PARAM_TYPE_DOUBLE
EDJE_EXTERNAL_PARAM_TYPE_STRING
EDJE_EXTERNAL_PARAM_TYPE_BOOL
EDJE_EXTERNAL_PARAM_TYPE_CHOICE
EDJE_EXTERNAL_PARAM_TYPE_MAX
EDJE_LOAD_ERROR_NONE
EDJE_LOAD_ERROR_GENERIC
EDJE_LOAD_ERROR_DOES_NOT_EXIST 
EDJE_LOAD_ERROR_PERMISSION_DENIED
EDJE_LOAD_ERROR_RESOURCE_ALLOCATION_FAILED
EDJE_LOAD_ERROR_CORRUPT_FILE
EDJE_LOAD_ERROR_UNKNOWN_FORMAT
EDJE_LOAD_ERROR_INCOMPATIBLE_FILE
EDJE_LOAD_ERROR_UNKNOWN_COLLECTION
EDJE_LOAD_ERROR_RECURSIVE_REFERENCE
EDJE_DRAG_DIR_NONE
EDJE_DRAG_DIR_X
EDJE_DRAG_DIR_Y
EDJE_DRAG_DIR_XY
);

require XSLoader;
XSLoader::load('pEFL::Edje');

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
#XXX		*$AUTOLOAD = sub () { $val };
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

pEFL::Edje::Object

=head1 SYNOPSIS

  use pEFL::Elm;
  [...]
  my $edje = pEFL::Edje::Object->add($parent);
  [...]

=head1 DESCRIPTION

This module is a perl binding to Edje ojects. It contains functions that deal with Edje layouts and its components

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Edje__Object__Group.html 

For instructions, how to use pEFL::Edje::Object, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. pEFL::Edje::Object gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "edje_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Bg.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
