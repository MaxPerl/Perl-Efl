package Efl::Ecore;

use 5.028001;
use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

use Efl::Ecore::Idler;
use Efl::Ecore::Mainloop;
use Efl::Ecore::Poller;
use Efl::Ecore::Time;
use Efl::Ecore::Timer;
use Efl::Ecore::Event;
use Efl::Ecore::EventFilter;
use Efl::Ecore::EventHandler;
use Efl::Ecore::Event::Key;
use Efl::Ecore::Event::MouseButton;
use Efl::Ecore::Event::MouseMove;
use Efl::Ecore::Event::MouseWheel;
use Efl::Ecore::Event::SignalExit;
use Efl::Ecore::Event::SignalRealtime;
use Efl::Ecore::Event::SignalUser;

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
    ECORE_VERSION_MAJOR
    ECORE_VERSION_MINOR
    ECORE_CALLBACK_CANCEL
    ECORE_CALLBACK_RENEW
    ECORE_CALLBACK_PASS_ON
    ECORE_CALLBACK_DONE
	ECORE_POLLER_CORE
	ECORE_EVENT_NONE
	ECORE_EVENT_SIGNAL_USER
	ECORE_EVENT_SIGNAL_HUP
	ECORE_EVENT_SIGNAL_EXIT
	ECORE_EVENT_SIGNAL_POWER
	ECORE_EVENT_SIGNAL_REALTIME
	ECORE_EVENT_MEMORY_STATE
	ECORE_EVENT_POWER_STATE
	ECORE_EVENT_LOCALE_CHANGED
	ECORE_EVENT_HOSTNAME_CHANGED
	ECORE_EVENT_SYSTEM_TIMEDATE_CHANGED
	ECORE_EVENT_COUNT
	ECORE_EVENT_KEY_DOWN
	ECORE_EVENT_KEY_UP
	ECORE_EVENT_MOUSE_BUTTON_DOWN
	ECORE_EVENT_MOUSE_BUTTON_UP
	ECORE_EVENT_MOUSE_MOVE
	ECORE_EVENT_MOUSE_WHEEL
	ECORE_EVENT_MOUSE_IN
	ECORE_EVENT_MOUSE_OUT
);


require XSLoader;
XSLoader::load('Efl::Ecore');

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

Ecore - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Efl;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Efl, created by h2xs. It looks like the
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
