#! /usr/bin/perl
use strict;
use warnings;

use Efl::Evas;
use Efl::Elm;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);
my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
$win->autodel_set(1);

my $bx = Efl::Elm::Box->add($win);
$bx->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$win->resize_object_add($bx);
$bx->show();

my $sl = Efl::Elm::Slider->add($win);
$sl->size_hint_align_set(EVAS_HINT_FILL,0.5);
$sl->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$sl->indicator_format_function_set(\&indicator_format, undef);
$bx->pack_end($sl);
$sl->show();


$win->show();

Efl::Elm::run();
Efl::Elm::shutdown();


sub indicator_format {
    my ($val) = @_;
    my $str = "Val is $val";
    return $str;
}
