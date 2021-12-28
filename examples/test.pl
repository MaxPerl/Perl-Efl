#! /usr/bin/perl
#use strict;
use warnings;

use Efl::Evas;
use Efl::Evas::Object;
use Efl::Elm;
use Efl::Elm::Win;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM::POLICY_QUIT, ELM::POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
$win->autodel_set(1);

my $autodel = $win->autodel_get();

print "AUTODEL $autodel\n";

# win 400x400
$win->resize(400,400);

$win->show();

Efl::Elm::run();
#Dump($button_text);
Efl::Elm::shutdown();
