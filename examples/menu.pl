#! /usr/bin/perl
use strict;
use warnings;

use Efl::Evas;
use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::Menu;
use Efl::Elm::MenuItem;
use Efl::Elm::Button;
use Efl::Elm::Icon;

Efl::Elm::init($#ARGV, \@ARGV);

my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
$win->autodel_set(1);
Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

# TODO: rect

my $menu = Efl::Elm::Menu->add($win);
$menu->item_add(undef, undef, "first item", \&select, 123);
my $menu_it = $menu->item_add(undef, "mail-reply-all","second item", undef,undef);

$menu->item_add($menu_it,"object-rotate-left","menu 1",undef,undef);

my $button = Efl::Elm::Button->add($win);
$button->text_set("button - delete items");
my $menu_it1 = $menu->item_add($menu_it, undef,undef, undef, undef, undef);
$menu_it1->part_content_set("default", $button);
$button->smart_callback_add("clicked", \&_del_it, $menu);
$menu->item_separator_add($menu_it);
$menu->item_add($menu_it, undef, "third item", undef, undef);
$menu->item_add($menu_it, undef, "fourth item", undef, undef);
$menu->item_add($menu_it, "window-new", "sub menu", undef, undef);

my $menu_it = $menu->item_add(undef, undef, "third item", undef, undef);
$menu_it->item_disabled_set(1);

$win->event_callback_add(2,\&show,$menu);

$menu->show();
$win->resize(250,350);
$win->show();

Efl::Elm::run();
Efl::Elm::shutdown();

sub _del_it {
    print "DEL CLICKED\n";
}

sub show {
    my ($data) = @_;
    $data->show();
}

sub select {
    my ($data2,$e,$f ) = @_; print "SELECT $data2\n";
}
