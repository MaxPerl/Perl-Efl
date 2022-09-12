package Efl::Elm::Win;

use strict;
use warnings;

require Exporter;
use Efl::Evas;
use Efl::Elm::Object;

our @ISA = qw(Exporter ElmWinPtr);

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
XSLoader::load('Efl::Elm::Win');

sub add {
    my ($class,$parent,$name,$type) = @_;
    my $widget = elm_win_add($parent,$name,$type);
    $widget->event_callback_add(EVAS_CALLBACK_DEL, \&Efl::PLSide::cleanup, $widget);
    $widget->event_callback_add(EVAS_CALLBACK_DEL, \&Efl::PLSide::cleanup_signals, $widget);
    return $widget;
}

sub util_standard_add {
    my ($class,$name,$title) = @_;
    my $widget = elm_win_util_standard_add($name,$title);
    $widget->event_callback_add(EVAS_CALLBACK_DEL, \&Efl::PLSide::cleanup, $widget);
    $widget->event_callback_add(EVAS_CALLBACK_DEL, \&Efl::PLSide::cleanup_signals, $widget);
    return $widget;
}

sub util_dialog_add {
    my ($class,$parent,$name,$title) = @_;
    my $widget = elm_win_util_dialog_add($parent,$name,$title);
    $widget->event_callback_add(EVAS_CALLBACK_DEL, \&Efl::PLSide::cleanup, $widget);
    $widget->event_callback_add(EVAS_CALLBACK_DEL, \&Efl::PLSide::cleanup_signals, $widget);
    return $widget;
}


package ElmWinPtr;

our @ISA = qw(ElmObjectPtr EvasObjectPtr);

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Efl::Elm:Win

=head1 SYNOPSIS

  use Efl::Elm;
  [...]
  my $widget = Efl::Elm::Win->util_standard_add("name", "title of win");
  $widget->autodel_set(1);
  Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);
  [...]

=head1 DESCRIPTION

This module is a perl binding to the Elementary Win widget.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Win.html 

For instructions, how to use Efl::Elm::Win, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. Efl::Elm::Win gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "elm_win_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Win.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
