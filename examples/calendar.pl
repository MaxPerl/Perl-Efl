use strict;
use warnings;

use Efl::Evas;
use Efl::Elm;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("calendar", "Calendar Creation example");

$win->autodel_set(1);

$win->resize(400,400);

my $cal = Efl::Elm::Calendar->add($win);
$cal->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$cal->weekdays_names_set(["Mo","Di","Mi","Do","Fr","Sa","So"]);
my $names = $cal->weekdays_names_get();

my $tm = Efl::Time->new(localtime());
$cal->date_max_set($tm);
my $time = $cal->date_max_get();

$cal->show();

$win->resize_object_add($cal);
$win->show();

Efl::Elm::run();

Efl::Elm::shutdown();

