use strict;
use warnings;

use Efl::Evas::Object;
use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::Calendar;
use Efl::Evas;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("Main", "Hello, World");

$win->autodel_set(1);

$win->resize(400,400);

$win->smart_callback_add("delete,request",sub {print "Exiting \n"}, undef);

my $cal = Efl::Elm::Calendar->add($win);
$cal->size_hint_weight_set(EVAS::HINT_EXPAND,EVAS::HINT_EXPAND);
$cal->weekdays_names_set(["Mo","Di","Mi","Do","Fr","Sa","So"]);

my $time = $cal->date_max_get();
print "TIME $time \n";
print "TIME " . $time->tm_mday() . "\n";

$win->resize_object_add($cal);

$cal->show();

$win->show();

Efl::Elm::run();

#print "Exiting ...\n";
Efl::Elm::shutdown();

