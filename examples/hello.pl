use strict;
use warnings;

use Efl::Evas::Object;
use Efl::Elm;
use Efl::Elm::Win;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM::POLICY_QUIT, ELM::POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("Main", "Hello, World");

$win->autodel_set(1);

$win->resize(400,400);

$win->smart_callback_add("delete,request",sub {print "Exiting \n"}, undef);

$win->show();

print "$win\n";

Efl::Elm::run();

#print "Exiting ...\n";
Efl::Elm::shutdown();
