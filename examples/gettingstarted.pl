use strict;
use warnings;

use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::Box;
use Efl::Elm::Label;
use Efl::Elm::Button;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("hello", "Hello");

$win->smart_callback_add("delete,request",\&on_done, undef);

my $box = Efl::Elm::Box->add($win);

$box->horizontal_set(1);

$win->resize_object_add($box);

$box->show();

my $lab = Efl::Elm::Label->add($win);

$lab->text_set("Hello out there, World\n");

$box->pack_end($lab);

$lab->show();

my $btn = Efl::Elm::Button->add($win);

$btn->text_set("OK");

$box->pack_end($btn);

$btn->show();

$btn->smart_callback_add("clicked", \&on_done, undef);


$win->show();

Efl::Elm::run();

Efl::Elm::shutdown();

sub on_done {
    print "Exiting \n";
    Efl::Elm::exit();
}
