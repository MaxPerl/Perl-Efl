use strict;
use warnings;

use Efl;
use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::Box;
use Efl::Elm::Fileselector;
use Efl::Evas;

my $size;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM::POLICY_QUIT, ELM::POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("hello", "Hello, World!");
$win->autodel_set(1);



my $box = Efl::Elm::Box->add($win);
$box->horizontal_set(1);
$box->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$win->resize_object_add($box);
$box->show();

my $vbox = Efl::Elm::Box->add($win);
$vbox->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$vbox->size_hint_align_set(EVAS_HINT_FILL,EVAS_HINT_FILL);
$vbox->show();
$box->pack_end($vbox);

my $fs = Efl::Elm::Fileselector->add($win);
$fs->is_save_set(1);
$fs->expandable_set(0);
$fs->path_set("/home/maximilian");

$fs->multi_select_set(1);

$fs->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$fs->size_hint_align_set(EVAS_HINT_FILL,EVAS_HINT_FILL);
$fs->show();
$vbox->pack_end($fs);


$fs->smart_callback_add("done", \&_fs_done, $fs);
$fs->smart_callback_add("selected", \&_fs_selected, $fs);

# win 400x400
$win->resize(800,600);
$win->show();


Efl::Elm::run();

Efl::Elm::shutdown();

sub _fs_done {

my ($data, $obj, $ev_info) = @_;
#Dump($ev_info);
#my $selected = $obj->selected_get();
my $selected = Efl::ev_info2s($ev_info);
print "We are done!! Selected file is $selected\n";
Efl::Elm::exit();

}

sub _fs_selected {
    my ($data, $obj, $ev_info) = @_;
#my $selected = $obj->selected_get();
my $selected = Efl::ev_info2s($ev_info);
my @selected = $obj->selected_paths_get_pv();
print "There is been a selection. Selected file is $selected\n";
print "SELECTED FILES @selected\n";
}
