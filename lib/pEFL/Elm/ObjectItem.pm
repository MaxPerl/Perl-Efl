package pEFL::Elm::ObjectItem;

use strict;
use warnings;

require Exporter;
use pEFL::Elm::WidgetItem;

our @ISA = qw(Exporter ElmObjectItemPtr);

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
XSLoader::load('pEFL::Elm::ObjectItem');

package ElmObjectItemPtr;

use pEFL::Elm::WidgetItem;

our @ISA = qw(ElmWidgetItemPtr);

sub content_get_pv {
	my ($obj) = @_;
	my $content = $obj->content_get();
	my $class = ElmObjectPtr::widget_type_get($content);
	if ($class =~ /^Elm_/) {
		my $pclass = $class;
		$pclass =~ s/_//g;
		$pclass = $pclass . "Ptr";
		bless($content,$pclass);
	}
	return $content;
}

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

pEFL::Elm:ObjectItem

=head1 SYNOPSIS

  use pEFL::Elm;
  [...]
  my $text = $item->text_get();
  $item->content_set("default", $content);
  [...]

=head1 DESCRIPTION

This module is a perl binding to the Elementary ObjectItem widget.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__ObjectItem.html 

For instructions, how to use pEFL::Elm::ObjectItem, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. pEFL::Elm::ObjectItem gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "elm_object_item_" at the beginning of the c functions.

=head1 SPECIFICS OF THE BINDING

There is a special version of $object_item->content_get() and $object_item->part_content_get($part) with the name $object_item->content_get_pv() and $object_item->part_content_get_pv($part) that try to bless the returned EvasObject to the appropriate perl class. In fact the C class is fetched by ElmObjectPtr::widget_type_get and translated to the PerlClass through deleting underscores and adding "Ptr". It should work with all Elm_*-Widgets for which a perl binding exist. Nevertheless it is not guaranteed to work in all cases.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__ObjectItem.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
