#! /usr/bin/perl
use strict;
use warnings;

use Efl::Evas;
use Efl::Ecore::Evas;
use Efl::Evas::Rectangle;
use Efl::Ecore::Mainloop;

if (Efl::Ecore::Evas::init() <= 0) {
    exit 1;
}

# TODO: Enginges
my $ee = Efl::Ecore::Evas::new( undef, 0,0,200,200,undef);
$ee->title_set("Ecore Evas basics Example");
$ee->show();

$ee->callback_delete_request_set(\&on_delete);
$ee->callback_show_set(\&on_show);
$ee->callback_hide_set(\&on_show);

my $canvas = $ee->evas_get();

my $bg = Efl::Evas::Rectangle->add($canvas);
$bg->color_set(0,0,255,255);
$bg->resize(200,200);
$bg->show();
$ee->object_associate($bg,0);

Efl::Ecore::Mainloop::begin();
$ee->free();
Efl::Ecore::Evas::shutdown();

sub on_delete {
    my ($ee) = @_;
    print "Deleting $ee \n";
    Efl::Ecore::Mainloop::quit();
}

sub on_show {
    my ($ee) = @_;
    my $canvas = $ee->evas_get();
    my ($w,$h) = $canvas->output_size_get();
    print "Showing/Hiding $w $h \n";
}
