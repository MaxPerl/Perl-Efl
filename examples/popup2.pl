# Based on the Popup Tutorial
# see https://www.enlightenment.org/develop/legacy/tutorial/popup_tutorial
#
#! /usr/bin/perl
use strict;
use warnings;

use Efl::Elm;

my $size;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("popup", "Popup");
$win->autodel_set(1);

# win 400x400
$win->resize(480,800);

my $popup = Efl::Elm::Popup->add($win);

# Setting popup title-text
$popup->part_text_set("title,text", "Title");

# Appending popup content-items
$popup->item_append("Message",undef,\&_item_selected_cb,undef);
$popup->item_append("Email",undef,\&_item_selected_cb,undef);
$popup->item_append("Contacts",undef,\&_item_selected_cb,undef);
$popup->item_append("Video",undef,\&_item_selected_cb,undef);
$popup->item_append("Music",undef,\&_item_selected_cb,undef);
$popup->item_append("Memo",undef,\&_item_selected_cb,undef);
my $it1 = $popup->item_append("Radio",undef,\&_item_selected_cb,undef);

# Changing the label of the item
$it1->text_set("FM");
$popup->item_append("Messenger",undef,\&_item_selected_cb,undef);
$popup->item_append("Settings",undef,\&_item_selected_cb,undef);
$popup->item_append("App Installer",undef,\&_item_selected_cb,undef);
$popup->item_append("Browser",undef,\&_item_selected_cb,undef);
$popup->item_append("Weather",undef,\&_item_selected_cb,undef);
$popup->item_append("News Feeds",undef,\&_item_selected_cb,undef);

# Creating the first action button
my $btn = Efl::Elm::Button->add($popup);
$btn->text_set("Ok");

# Appending the first action button
$popup->part_content_set("button1",$btn);
$btn->smart_callback_add("clicked",\&_response_cb,$popup);

# Creating the second action button
my $btn2 = Efl::Elm::Button->add($popup);
$btn2->text_set("Cancel");

# Appending the second action button
$popup->part_content_set("button2",$btn2);


# Display the popup object
$popup->show();

$win->show();

Efl::Elm::run();

Efl::Elm::shutdown();

sub _item_selected_cb {
	my ($popup, $obj, $evinfo) = @_;
	
	my $item = Efl::ev_info2obj($evinfo, "ElmPopupItemPtr");
	print "popup item selected " . $item->text_get() . "\n";
}

sub _response_cb {
	my ($data, $obj, $ev) = @_;
	$data->hide();
}