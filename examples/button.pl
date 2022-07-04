#! /usr/bin/perl
use strict;
use warnings;

use Efl::Evas;
use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::Button;
use Efl::Elm::Icon;
use Scalar::Util qw(refaddr);

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);
my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
$win->autodel_set(1);

# win 400x400
$win->resize(400,400);

# basic tutorial code
# basic text button
my $button_text = Efl::Elm::Button->new($win);
$button_text->text_set("Click me");

# how a container object should resize a given child within its area
$button_text->size_hint_weight_set(EVAS_HINT_EXPAND,1);

# how to align an object
$button_text->size_hint_align_set(-1, 0.5);

$button_text->resize(100,30);
$button_text->show();
test($button_text);


# Icon and text button
my $button_icon_text = Efl::Elm::Button->add($win);
my $icon2 = Efl::Elm::Icon->add($win);

# set the image file and the button as an icon
$icon2->file_set("icon.png",undef);
$button_icon_text->part_content_set("icon",$icon2);
$button_icon_text->text_set("Press me");

$button_icon_text->size_hint_weight_set(1,1);
$button_icon_text->size_hint_align_set(-1, 0.5);

$button_icon_text->resize(100,30);
$button_icon_text->move(210,0);
$button_icon_text->show();

# Click event
my $text = "TEXT";
my $func = \&_button_click_cb;
$button_text->smart_callback_add("clicked", \&_button_click_cb, $text);
#$button_text->evas_object_event_callback_add(1, \&_button_click_cb2, 123);
#$button_text->smart_callback_add("del", sub {$button_text->delete_perl_data()}, undef);
# Press event

# Basic icon button
my $button_icon = Efl::Elm::Button->add($win);
my $icon = Efl::Elm::Icon->add($win);

# set the image file and the button as an icon
$icon->file_set("icon.png",undef);
$button_icon->part_content_set("icon",$icon);

$button_icon->size_hint_weight_set(1,1);
$button_icon->size_hint_align_set(-1, 0.5);

$button_icon->resize(100,30);
$button_icon->move(110,0);
$button_icon->show();

#$button_icon->smart_callback_add("clicked", \&_button_press_cb, $button_text);


# Unpress event
#$button_icon->smart_callback_add("unpressed", \&_button_unpress_cb, undef);
#Dump($button_icon);


$win->show();

Efl::Elm::run();
Efl::Elm::shutdown();

sub test {
    #my ($button) = @_;
    use Devel::Peek;
    #Dump($_[0]);
}

sub _button_click_cb {
    my ($data, $button, $event_info) = @_;
    print "Clicked\n";
    $_[1]->text_set("Clicked!");
    #$button_text->smart_callback_del("clicked",\&_button_click_cb,undef);
}
sub _button_click_cb2 {
    my ($data, $button, $event_info) = @_;
    print "CLICKED\n";
}

sub _button_press_cb {
    my ($data, $button, $event_info) = @_;
     $data->text_set("Pressed!");
     $button_text->del();

}

sub _button_unpress_cb {
    my ($data,$button, $event_info) = @_;
    $button->text_set("Unpressed!\n");
}
