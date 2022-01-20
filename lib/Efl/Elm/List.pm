package Efl::Elm::List;

use strict;
use warnings;

require Exporter;
use Efl::Evas::Object;
use Efl::Elm::Object;
use Efl::Elm::ListItem;

our @ISA = qw(Exporter ElmListPtr);

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
XSLoader::load('Efl::Elm::List');

sub add {
    my ($class,$parent) = @_;
    my $widget = elm_list_add($parent);
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup, $widget);
    return $widget;
}

*new = \&add;

package ElmListPtr;

use Efl::Eina;

our @ISA = qw(EvasObjectPtr ElmObjectPtr);

sub items_get_pv {
    my ($obj) = @_;
    my $list = $obj->items_get();
    my @array = Efl::Eina::list2array($list,"ElmListItem");
    return @array;
}

sub selected_items_get_pv {
    my ($obj) = @_;
    my $list = $obj->selected_items_get();
    my @array = Efl::Eina::list2array($list,"ElmListItem");
    return @array;
}

# Preloaded methods go here.

1;
__END__
=head1 NAME

Efl::Elm:List

=head1 SYNOPSIS

  use Efl::Elm::List;
  [...]
  my $list = Efl::Elm::List->add($parent);
  $list->resize(320,300);
  $list->mode_set(ELM::LIST_LIMIT);
  $list->item_append("Text item",undef, undef,undef,undef);

  my $icon = Efl::Elm::Icon->add($list);
  $icon->standard_set("chat");
  $list->item_append("Icon item", $icon, undef,undef,undef);

  my $button = Efl::Elm::Button->add($list);
  $button->text_set("Button");

  my $itembutton = $list->item_append("Button item", undef, $button, undef,undef);
  $list->go();
  $list->show();
  [...]
  my @items = $list->items_get_pv();
  @items = $list->selected_items_get_pv();
  [...]

=head1 DESCRIPTION

This module is a perl binding to the Elementary List widget.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__List.html 

For instructions, how to use Efl::Elm::List, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. Efl::Elm::List gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "elm_list_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__List.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
