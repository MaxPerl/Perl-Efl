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
	die "Could not init Ecore Evas\n";
}

if (! pEFL::Edje::init()) {
	pEFL::Ecore::Evas::shutdown();
	die "Could not init Edje\n";
}

my $ee = pEFL::Ecore::Evas->new(undef,0,0,$width,$height,undef);

if (!$ee) {
	pEFL::Ecore::Edje::shutdown();
	pEFL::Ecore::Evas::shutdown();	
	die "Could not create Ecore Evas.\n";
}

$ee->callback_delete_request_set(\&on_delete);
$ee->title_set("Edje Basic Example");

my $evas = $ee->evas_get();

my $bg = pEFL::Evas::Rectangle->add($evas);
$bg->color_set(255,255,255,255);
$bg->move(0,0);
$bg->resize($width,$height);
$bg->show();
$ee->object_associate($bg, ECORE_EVAS_OBJECT_ASSOCIATE_BASE);

$bg->focus_set(1);


pEFL::Ecore::Mainloop::begin();

#$edje->del();
$ee->free();
pEFL::Edje::shutdown();
pEFL::Ecore::Evas::shutdown();

sub on_delete {
	pEFL::Ecore::Mainloop::quit();
}

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



