package Efl::Eina;

use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

use Efl::PLSide;
use Efl::Eina::List;
use Scalar::Util qw(refaddr blessed);

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Eina ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
);

our $VERSION = '0.01';

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.

    my $constname;
    our $AUTOLOAD;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "&Callback::constant not defined" if $constname eq 'constant';
    my ($error, $val) = constant($constname);
    if ($error) { croak $error; }
    {
	no strict 'refs';
	# Fixed between 5.005_53 and 5.005_61
#XXX	if ($] >= 5.00561) {
#XXX	    *$AUTOLOAD = sub () { $val };
#XXX	}
#XXX	else {
	    *$AUTOLOAD = sub { $val };
#XXX	}
    }
    goto &$AUTOLOAD;
}

require XSLoader;
XSLoader::load('Efl::Eina', $VERSION);

# Preloaded methods go here.

sub list2array {
    my ($list,$class) = @_;
    my @array = ();
    my $count = $list->count;
    my $i;
    for ($i = 0; $i < $count; $i++) {
        my $item = $list->nth($i);
        $item = Efl::PLSide::int2blessedref($item,$class);
        push @array,$item;
    }
    return @array;
}

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Eina

=head1 SYNOPSIS

  use Eina;
  [...]
  my $list = $calendar->marks_get();
  my @array = Efl::Eina::list2array($list,"ElmCalendarMarkPtr");

=head1 DESCRIPTION

Note: It is not planed to support the Eina datatypes, because the perl datatypes are
enough.

This module contains only the function C<list2array($list,$class)>, which converts
an Eina_List to a perl array. It should not necessary that you use this function. If a 
method returns an Eina_List, it is recommended to use the method with the suffix _pv (for
perl value).

=head2 EXPORT

None by default.

=head1 AUTHOR

Maximilian Lika

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Maximilian Lika

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.28.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
