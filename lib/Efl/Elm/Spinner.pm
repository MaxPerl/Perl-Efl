package Efl::Elm::Spinner;

use strict;
use warnings;

require Exporter;
use Efl::Evas::Object;
use Efl::Elm::Object;

our @ISA = qw(Exporter ElmSpinnerPtr);

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

);

require XSLoader;
XSLoader::load('Efl::Elm::Spinner');

sub add {
    my ($class,$parent) = @_;
    my $widget = elm_spinner_add($parent);
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup, $widget);
    return $widget;
}

*new = \&add;

package ElmSpinnerPtr;

our @ISA = qw(ElmObjectPtr EvasObjectPtr);

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

Efl::Elm:Spinner

=head1 SYNOPSIS

  use Efl::Elm::Spinner;
  [...]
  my $widget = Efl::Elm::Spinner->add($parent);
  $widget->value_set(12.3);
  [...]

=head1 DESCRIPTION

This module is a perl binding to the Elementary Spinner widget.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Spinner.html 

For instructions, how to use Efl::Elm::Spinner, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. Efl::Elm::Spinner gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "elm_spinner_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Spinner.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut