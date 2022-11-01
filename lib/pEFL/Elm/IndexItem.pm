package pEFL::Elm::IndexItem;

use strict;
use warnings;

require Exporter;
use pEFL::Elm::ObjectItem;

our @ISA = qw(Exporter ElmIndexItemPtr);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Elm ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

require XSLoader;
XSLoader::load('pEFL::Elm::IndexItem');

package ElmIndexItemPtr;

our @ISA = qw(ElmObjectItemPtr);

# Preloaded methods go here.

1;
__END__
=head1 NAME

pEFL::Elm:IndexItem

=head1 SYNOPSIS

  use pEFL::Elm;
  [...]
  my $widget = pEFL::Elm::IndexItem->add($parent);
  $widget->selected_set(1);
  [...]

=head1 DESCRIPTION

This module is a perl binding to the Elementary IndexItem widget.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__IndexItem.html 

For instructions, how to use pEFL::Elm::IndexItem, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. pEFL::Elm::IndexItem gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "elm_index_item_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__IndexItem.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
