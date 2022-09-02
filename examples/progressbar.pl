#! /usr/bin/perl
#use strict;
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
$bx->size_hint_weight_set(EVAS_HINT_EXPAND,1);

# how to align an object
$bx->size_hint_align_set(-1, 0.5);

my $pb = Efl::Elm::Progressbar->add($win);
$pb->text_set("LABEL");
$pb->span_size_set(300);
$pb->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$pb->size_hint_align_set(EVAS_HINT_FILL, 0.5);
$pb->unit_format_function_set(\&_progress_format_cb, undef);
$bx->pack_end($pb);
$pb->show();
$bx->show();
$pb->value_set(0.8);

$win->show();

Efl::Elm::run();
Efl::Elm::shutdown();


sub _progress_format_cb {
    my ($val) = @_;
    return "VAL is $val";
}
