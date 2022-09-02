#! /usr/bin/perl
use strict;
use warnings;

use Efl::Evas;
use Efl::Elm;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);
my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
$win->autodel_set(1);

# win 400x400
$win->resize(400,400);

my $bx = Efl::Elm::Box->add($win);
$bx->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$win->resize_object_add($bx);
$bx->show();

my $fr = Efl::Elm::Frame->add($win);
$fr->size_hint_weight_set(1.0,0.5);
$fr->size_hint_align_set(EVAS_HINT_FILL,EVAS_HINT_FILL);
$fr->text_set("Color View");
$bx->pack_end($fr);
$fr->show();

my $rect = Efl::Evas::Rectangle->add($win->evas_get());
$fr->part_content_set("default",$rect);
$rect->color_set(255,90,18,255);
$rect->show();

my $fr2 = Efl::Elm::Frame->add($win);
$fr2->size_hint_weight_set(1.0,0.5);
$fr2->size_hint_align_set(EVAS_HINT_FILL,EVAS_HINT_FILL);
$fr2->text_set("Color Selector");
$bx->pack_end($fr2);
$fr2->show();

my $cs = Efl::Elm::Colorselector->add($win);
$cs->palette_name_set("painting");
$cs->size_hint_weight_set(EVAS_HINT_EXPAND,0.0);
$cs->size_hint_align_set(EVAS_HINT_FILL,0.0);
$cs->color_set(255,90,18,255);
$cs->show();
# TODO: Callbacks
$fr2->part_content_set("default",$cs);

$cs->smart_callback_add("color,item,longpressed" => \&longpressed_cb);

$win->show();

Efl::Elm::run();
Efl::Elm::shutdown();

sub longpressed_cb {
    my ($data,$obj,$ev_info) = @_;
    my $it = Efl::ev_info2obj( $ev_info, "Efl::Elm::ColorselectorPaletteItem");
    my ($r,$g,$b,$a) = $it->color_get();
    print "color: $r $g $b $a\n";
}
