#! /usr/bin/perl
use strict;
use warnings;

use Efl::Evas;
use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::Hoversel;
use Efl::Elm::Button;
use Efl::Elm::Icon;

Efl::Elm::init($#ARGV, \@ARGV);

my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
$win->autodel_set(1);
Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

