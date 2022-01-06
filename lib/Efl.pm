package Efl;

use 5.028001;
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

our $VERSION = '0.61';

require XSLoader;
XSLoader::load('Efl', $VERSION);

# Preloaded methods go here.


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

If a method returns an Eina_List there usually is a version with the suffix _pv (for perl value) that returns a perl array (for example in Efl::Elm::List the method items_get_pv()). It is recommended to use these perl adjusted methods. If you find a method, where the adaption is missing, please open an issue.

=head1 FUNCTIONS IN EFL

The Efl modules gives you the following functions:

=over 4

=item ev_info2s(ev_info) - if event info is a string, this function converts the void pointer to a perl string

=back

=head2 EXPORT

None by default.



=head1 SEE ALSO

https://www.enlightenment.org/docs/start

=head1 AUTHOR

Maximilian Lika, E<lt>maximilian@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
