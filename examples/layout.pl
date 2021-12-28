#! /usr/bin/perl
#use strict;
use warnings;

use Efl::Evas;
use Efl::Evas::Object;
use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::Button;
use Efl::Elm::Layout;

my $btn_large = 0;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);
my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
$win->autodel_set(1);

my $layout = Efl::Elm::Layout->add($win);
$layout->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$win->resize_object_add($layout);
$layout->file_set("./layout_example.edj", "example/mylayout3");
$layout->show();

$layout->signal_callback_add("size,changed","",\&_size_changed_cb2,$layout);
$layout->signal_callback_add("size,changed","",\&_size_changed_cb,$layout);


my $btn = Efl::Elm::Button->add($win);
$btn->text_set("Enlarge me");
$btn->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$btn->size_hint_align_set(EVAS_HINT_FILL,EVAS_HINT_FILL);
$layout->part_content_set("example/custom",$btn);
$btn->smart_callback_add("clicked", \&_swallow_btn_cb,$layout);

$win->resize(160,160);
$win->show();

Efl::Elm::run();
Efl::Elm::shutdown();

sub _swallow_btn_cb {
    my ($layout, $btn, $evInfo) = @_;
    
    unless ($btn_large) {
        $btn_large = 1;
        $layout->signal_emit("button,enlarge","");
        $btn->text_set("Reduce me!");
    }
    else {
        $btn_large = 0;
        $layout->signal_emit("button,reduce","");
        $btn->text_set("Enlarge me!");
        
    }
}

sub _size_changed_cb {
    my ($data, $layout, $emission, $source) = @_;
    $layout->sizing_eval();
    print "SIZE CHANGED\n";
}
sub _size_changed_cb2 {
    my ($data, $layout, $emission, $source) = @_;
    $layout->sizing_eval();
    print "SIZE CHANGED2\n";
}
