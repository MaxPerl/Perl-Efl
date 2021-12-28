#! /usr/bin/perl
use strict;
use warnings;

use Efl::Evas;
use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::Box;
use Efl::Elm::Entry;

Efl::Elm::init($#ARGV, \@ARGV);

my $rehighlight = 1;

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);
my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
$win->autodel_set(1);

my $box = Efl::Elm::Box->add($win);
$box->size_hint_weight_set(EVAS_HINT_EXPAND, EVAS_HINT_EXPAND);
$win->resize_object_add($box);
$box->show();

my $en = Efl::Elm::Entry->add($win);
$en->autosave_set(0);
$en->file_set("./da_test.txt", ELM_TEXT_FORMAT_MARKUP_UTF8);
$en->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$en->size_hint_align_set(EVAS_HINT_FILL,EVAS_HINT_FILL);
$en->line_wrap_set(ELM_WRAP_WORD);
#$en->markup_filter_append(\&filter_user, undef);
#$en->markup_filter_prepend("limit_size", {max_char_count => 5, max_byte_count => 0});
#$en->markup_filter_append("accept_set", {accepted=> "ABCE",rejected => "0123456789"});
$en->smart_callback_add("changed,user" => \&changed, undef);
$box->pack_end($en);
$en->show();

$win->resize(300,780);


$win->show();

Efl::Elm::run();
Efl::Elm::shutdown();

sub filter_user {
    my ($data, $entry, $text) = @_;
    print "TEXT $text\n";
    return "B";
}

sub changed {
    my ($data, $entry, $ev) = @_;
    
        my $text = $entry->entry_get();
        $text = Efl::Elm::Entry::markup_to_utf8($text);
        #$text =~ s/\<b\>//g;
        #$text =~ s/\<\/b\>//g;
        my @lines = split("\n",$text);
        print "LINES @lines\n";
        $text = "";
        foreach my $line (@lines) {
            # Notes
            if ($line =~ m/^[a-vx-zA-VX-Z]:/) {
                $text = $text . "<b>$line</b><br>";
            }
            else {
                $line =~ s/([_=^]*[abcdefgxzABCDEFGXZ][,'-]*[0-9\/]*)/\<class\>$1\<\/class\>/g;
                # Slurs
                $line =~ s/([\(\)\-])/\<class\>$1\<\/class\>/g;
                # Keywords
                $line =~ s/(![\S]+?!)/\<string\>$1\<\/string\>/g;
                $text = $text . "$line<br>";
            }
        }
        print "TEXT $text\n";
        
        $entry->entry_set("$text");
        $rehighlight = 0;
    
}
