package Efl::Elm::Entry;

use strict;
use warnings;

require Exporter;
use Efl::Evas::Object;
use Efl::Elm::Object;

our @ISA = qw(Exporter ElmEntryPtr);

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
XSLoader::load('Efl::Elm::Entry');

sub add {
    my ($class,$parent) = @_;
    my $widget = elm_entry_add($parent);
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup, $widget);
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup_markup_filters, $widget);
    # For context menu items we have to call cleanup_genitems!!!
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup_genitems, $widget);
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup_signals, $widget);
    return $widget;
}

*new = \&add;

package ElmEntryPtr;

our @ISA = qw(ElmScrollerPtr ElmObjectPtr EvasObjectPtr);

sub markup_filter_prepend {
    my ($obj, $func, $data) = @_;
    
    Efl::PLSide::register_markup_filter_cb( $obj, $func, $data);
    
    if ($func eq "limit_size") {
        $data->{max_char_count} = $data->{max_char_count} || 0;
        $data->{max_byte_count} = $data->{max_byte_count} || 0;
        $obj->_elm_entry_markup_filter_limit_size_prepend($func,$data);
    }
    elsif ($func eq "accept_set") {
        $data->{accepted} = $data->{accepted} || undef;
        $data->{rejected} = $data->{rejected} || undef;
        $obj->_elm_entry_markup_filter_accept_set_prepend($func,$data);
    }
    else {
        $obj->_elm_entry_markup_filter_prepend($func);
    }
    
}

sub markup_filter_append {
    my ($obj, $func, $data) = @_;
    Efl::PLSide::register_markup_filter_cb( $obj, $func, $data);
    
    if ($func eq "limit_size") {
        $data->{max_char_count} = $data->{max_char_count} || 0;
        $data->{max_byte_count} = $data->{max_byte_count} || 0;
        $obj->_elm_entry_markup_filter_limit_size_append($func,$data);
    }
    elsif ($func eq "accept_set") {
        $data->{accepted} = $data->{accepted} || undef;
        $data->{rejected} = $data->{rejected} || undef;
        $obj->_elm_entry_markup_filter_accept_set_append($func,$data);
    }
    else {
        $obj->_elm_entry_markup_filter_append($func);
    }
}

sub markup_filter_remove{
    my ($obj, $func) = @_;
    
    my $objaddr = $$obj;
    my $funcname = Efl::PLSide::get_func_name($func);
    
    my $cstructaddr = $Efl::PLSide::MarkupFilters_Cbs{$objaddr}{$funcname}{cstructaddr};
    
    my $success = $obj->_elm_entry_markup_filter_remove($func,$cstructaddr);
    
    # Delete the callback on the Perl side
    delete($Efl::PLSide::MarkupFilters_Cbs{$objaddr}{$funcname});
}

sub context_menu_item_add {
	my ($obj, $label, $icon_file,$icon_type,$func,$data) = @_;
	$icon_file = $icon_file || "";
	$label = $label || "";
	my $id = Efl::PLSide::save_gen_item_data( $obj,undef,$func,$data );
	my $widget = _elm_entry_context_menu_item_add($obj,$label,$icon_file,$icon_type,$id);
	return $widget;
}

package Efl::Elm::EntryAnchorInfo;

our @ISA = qw(ElmEntryAnchorInfoPtr);

package Efl::Elm::EntryChangeInfo;

our @ISA = qw(ElmEntryChangeInfoPtr);

# Preloaded methods go here.

1;
__END__
=head1 NAME

Efl::Elm:Entry

=head1 SYNOPSIS

  #! /usr/bin/perl
  use strict;
  use warnings;

  use Efl::Evas;
  use Efl::Elm;

  Efl::Elm::init($#ARGV, \@ARGV);

  Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);
  my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
  $win->autodel_set(1);

  my $box = Efl::Elm::Box->add($win);
  $box->size_hint_weight_set(EVAS_HINT_EXPAND, EVAS_HINT_EXPAND);
  $win->resize_object_add($box);
  $box->show();

  my $en = Efl::Elm::Entry->add($win);
  $en->autosave_set(0);
  $en->file_set("./da_test.txt", ELM_TEXT_FORMAT_MARKUP_UTF8);
  $en->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
  $en->size_hint_align_set(EVAS_HINT_FILL,EVAS_HINT_FILL);
  $en->markup_filter_append(\&filter_user, undef);
  $en->markup_filter_prepend("limit_size", {max_char_count => 5, max_byte_count => 0});
  $en->markup_filter_append("accept_set", {accepted=> "ABCE",rejected => "0123456789"});
  $box->pack_end($en);
  $en->show();

  $win->resize(300,780);


  $win->show();

  Efl::Elm::run();
  Efl::Elm::shutdown();

  sub filter_user {
      my ($data, $entry, $text) = @_;
      print "TEXT $text\n";
      return "B";
  }

=head1 DESCRIPTION

This module is a perl binding to the Elementary Entry widget.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Entry.html 

For instructions, how to use Efl::Elm::Entry, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. Efl::Elm::Entry gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "elm_entry_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 

=head1 LIMITATIONS

The following functions are missing: 

=over 4

=item elm_entry_imf_context_get()

=item elm_entry_item_provider_prepend()

=item elm_entry_item_provider_append()

=item elm_entry_item_provider_remove()

=item elm_entry_input_panel_imdata_set()

=item elm_entry_input_panel_imdata_get()

=item elm_entry_context_menu_item_add()

=back

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Entry.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
