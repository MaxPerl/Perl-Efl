package Efl::Elm::Toolbar;

use strict;
use warnings;

require Exporter;
use Efl::Evas::Object;
use Efl::Elm::Object;
use Efl::Elm::ToolbarItem;

our @ISA = qw(Exporter ElmToolbarPtr);

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
XSLoader::load('Efl::Elm::Toolbar');

sub add {
    my ($class,$parent) = @_;
    my $widget = elm_toolbar_add($parent);
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup, $widget);
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup_genitems, $widget);
    return $widget;
}

*new = \&add;

package ElmToolbarPtr;

our @ISA = qw(ElmScrollerPtr ElmObjectPtr EvasObjectPtr);

sub insert_before {
    my ($obj,$before,$icon,$label,$func,$func_data) = @_;
    my $id = Efl::PLSide::save_gen_item_data( $obj,undef,$func,$func_data );
    my $widget = _elm_toolbar_item_insert_before($obj,$before,$icon, $label, $id);
    return $widget;
}

sub insert_after {
    my ($obj,$after,$icon,$label,$func,$func_data) = @_;
    my $id = Efl::PLSide::save_gen_item_data( $obj,undef,$func,$func_data );
    my $widget = _elm_toolbar_insert_after($obj,$after,$icon,$label,$id);
    return $widget;
}

sub item_prepend {
    my ($obj,$icon, $label,$func,$func_data) = @_;
    my $id = Efl::PLSide::save_gen_item_data( $obj,undef,$func,$func_data );
    my $widget = _elm_toolbar_item_prepend($obj,$icon,$label,$id);
    return $widget;
}

sub item_append {
    my ($obj,$icon, $label,$func,$func_data) = @_;
    my $id = Efl::PLSide::save_gen_item_data( $obj,undef,$func,$func_data );
    my $widget = _elm_toolbar_item_append($obj,$icon,$label,$id);
    return $widget;
}

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Efl::Elm:Toolbar

=head1 SYNOPSIS

  use Efl::Elm::Toolbar;
  [...]
  my $tb = Efl::Elm::Toolbar->add($parent);
  $tb->shrink_mode_set(ELM_TOOLBAR_SHRINK_SCROLL);
  $tb->size_hint_weight_set(0.0,0.0);
  $tb->size_hint_align_set(EVAS_HINT_FILL,0.0);
  $tb->show();
  $tb->item_append("document-print","Print",\&_item_1_pressed,$data);
  $tb->item_append("folder-new","New Folder",\&_item_2_pressed,$data);
  my $tb_it = $tb->item_append("mail-send","Send eMail",\&_item_3_pressed,$data);
  $tb_it->disabled_set(1);
  $tb->homogeneous_set(0);
  [...]

=head1 DESCRIPTION

This module is a perl binding to the Elementary Toolbar widget.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Toolbar.html 

For instructions, how to use Efl::Elm::Toolbar, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. Efl::Elm::Toolbar gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "elm_toolbar_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Toolbar.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
