package Efl::Elm;

use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

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

our @EXPORT = qw( ELM_POLICY_QUIT 
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
	
	ELM_ICON_NONE
	ELM_ICON_FILE
	ELM_ICON_STANDARD
	
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
XSLoader::load('Efl::Elm', $VERSION);

# Preloaded methods go here.

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
