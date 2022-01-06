package Efl::Elm::ColorselectorPaletteItem;

use strict;
use warnings;

require Exporter;
use Efl::Elm::ObjectItem;

our @ISA = qw(Exporter ElmColorselectorPaletteItemPtr);

require XSLoader;
XSLoader::load('Efl::Elm::ColorselectorPaletteItem');


package ElmColorselectorPaletteItemPtr;

our @ISA = qw(ElmObjectItemPtr);


# Preloaded methods go here.

1;
__END__
=head1 NAME

Efl::Elm:ColorselectorPaletteItem

=head1 SYNOPSIS

  use Efl::Elm::ColorselectorPaletteItem;
  [...]
  my $widget = Efl::Elm::ColorselectorPaletteItem->add($parent);
  $widget->color_set(255,255,255,1);
  [...]

=head1 DESCRIPTION

This module is a perl binding to the Elementary ColorselectorPaletteItem widget.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Colorselector.html 

For instructions, how to use Efl::Elm::ColorselectorPaletteItem, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. Efl::Elm::ColorselectorPaletteItem gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "elm_colorselector_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Colorselector.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
