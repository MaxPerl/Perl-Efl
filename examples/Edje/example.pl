#! /usr/bin/perl
use strict;
use warnings;

use pEFL;
use pEFL::Ecore;
use pEFL::Ecore::Evas;
use pEFL::Evas;
use pEFL::Edje;

my $width = 320;
my $height = 240;

if (pEFL::Ecore::Evas::init() <= 0) {
	exit 1;
}
pEFL::Edje::init();

my $window = pEFL::Ecore::Evas->new(undef,0,0,$width,$height,undef);

if (!$window) {
	die "Could not create window.\n";
}

my $canvas = $window->evas_get();

my $edje = create_my_group($canvas,"");

if (!$edje) {
	exit -2;
}

$window->show();

pEFL::Ecore::Mainloop::begin();

$edje->del();
$window->free();
pEFL::Edje::shutdown();
pEFL::Ecore::Evas::shutdown();

exit 0;

sub create_my_group {
	my ($canvas,$text) = @_;
	
	my $edje = pEFL::Edje::Object->add($canvas);
	
	if (!$edje) {
		die "Could not create edje object!\n";
	}
	
	if (!$edje->file_set("./example.edj","my_group")) {
		# TODO ERROR HANDLING
		$edje->del();
	}
	
	$edje->move(0,0);
	$edje->resize($width,$height);
	$edje->show();
	
	return $edje;
}



