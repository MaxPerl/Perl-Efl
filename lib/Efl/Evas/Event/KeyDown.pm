package Efl::Evas::Event::KeyDown;

use strict;
use warnings;

use Efl::Evas::Modifier;
use Efl::Evas::Lock;

require Exporter;

our @ISA = qw(Exporter EvasEventKeyDownPtr);

require XSLoader;
XSLoader::load('Efl::Evas::Event::KeyDown');


package EvasEventKeyDownPtr;



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
