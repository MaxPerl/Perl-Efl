package Efl::Elm::Config;

use strict;
use warnings;

require Exporter;
use Efl::Eina;
use Efl::PLSide;

our @ISA = qw(Exporter);

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
XSLoader::load('Efl::Elm::Config');

sub profile_list_get_pv {
	my $list = profile_list_get();
	my @array = Efl::Eina::list2array($list,"String");
	profile_list_free($list);
	return @array;
}

sub profile_list_full_get_pv {
	my $list = profile_list_full_get();
	my @array = Efl::Eina::list2array($list,"String");
	profile_list_free($list);
	return @array;
}

sub text_classes_list_get_pv {
	my $list = text_classes_list_get();
	my @array = Efl::Eina::list2array($list,"Efl::Elm::Config::TextClass");
	text_classes_list_free($list);
	return @array;
}

sub font_overlay_list_get_pv {
	my $list = font_overlay_list_get();
	my @array = Efl::Eina::list2array($list,"Efl::Elm::Config::FontOverlay");
	return @array;
}

sub color_classes_list_get_pv {
	my $list = text_classes_list_get();
	my @array = Efl::Eina::list2array($list,"Efl::Elm::Config::ColorClass");
	color_classes_list_free($list);
	return @array;
}

package Efl::Elm::Config::TextClass;

our @ISA = qw(ElmTextClassPtr);

package Efl::Elm::Config::FontOverlay;

our @ISA = qw(ElmFontOverlayPtr);

package Efl::Elm::Config::ColorClass;

our @ISA = qw(ElmColorClassPtr);

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Efl::Elm:Config

=head1 SYNOPSIS

  use Efl::Elm;
  [...]
  Efl::Elm::init($#ARGV, \@ARGV);
  Efl::Elm::Config::scroll_accel_factor_set(1);
  [...]

=head1 DESCRIPTION

This module is a perl binding to the Elementary Config functions.

For more informations see https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Config.html 

For instructions, how to use Efl::Elm::Config, please study this API reference for now. A perl-specific documentation will perhaps come in later versions. But applying the C documentation should be no problem. Efl::Elm::Config gives you a nice interface that is kept close to the C API. Please note, that the perl method names remove the "elm_config_" at the beginning of the c functions.

=head2 EXPORT

None by default.

=head1 SEE ALSO

https://www.enlightenment.org/develop/legacy/api/c/start#group__Elm__Config.html

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
