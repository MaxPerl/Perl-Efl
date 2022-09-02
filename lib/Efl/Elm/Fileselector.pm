package Efl::Elm::Fileselector;

use strict;
use warnings;

require Exporter;
use Efl::Evas::Object;
use Efl::Elm::Object;

our @ISA = qw(Exporter ElmFileselectorPtr);

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
XSLoader::load('Efl::Elm::Fileselector');

sub add {
    my ($class,$parent) = @_;
    my $widget = elm_fileselector_add($parent);
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup, $widget);
    $widget->smart_callback_add("del", \&Efl::PLSide::cleanup_signals, $widget);
    return $widget;
}

*new = \&add;

package ElmFileselectorPtr;

use Efl::Eina;

our @ISA = qw(ElmObjectPtr EvasObjectPtr);

sub selected_paths_get_pv {
    my ($obj) = @_;
    my $list = $obj->selected_paths_get();
    my @array = Efl::Eina::list2array($list,"String");
    return @array;
}

# Preloaded methods go here.

1;
__END__
=head1 NAME

Efl::Elm:Fileselector

=head1 SYNOPSIS

  use Efl::Elm;
  [...]
  my $widget = Efl::Elm::Fileselector->add($parent);
  $widget->path_set("/path/to/folder");
  [...]

=head1 DESCRIPTION

This module is a perl binding to the Elementary Fileselector widget.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Fileselector.html 

For instructions, how to use Efl::Elm::Fileselector, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. Efl::Elm::Fileselector gives you a nice object-oriented interface that is kept close to the C API. Please note, that the perl method names remove the "elm_fileselector_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 LIMITATIONS

the function elm_fileselector_filter_append is missing at the moment.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Fileselector.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
