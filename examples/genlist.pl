use strict;
use warnings;

use Efl::Evas;
use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::Genlist;
use Efl::Elm::GenlistItemClass;
use Efl::Elm::GenlistItem;
use Efl::PLSide;
use Efl::Eina;
use Efl::Elm::Icon;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("Main", "Hello, World");

$win->autodel_set(1);

$win->resize(400,400);

$win->smart_callback_add("delete,request",sub {print "Exiting \n"}, undef);


# Genlist
my $list = Efl::Elm::Genlist->new($win);
$list->multi_select_set(1);
my $itc = Efl::Elm::GenlistItemClass->new();
$itc->style("default");
$itc->text_get(\&_text_get);
$itc->content_get(\&_content_get);
$itc->del(\&del_cb);

my $item1 = $list->item_append($itc,123,undef,0,\&_select_item,123);

my $item2 = $list->item_prepend($itc,567,undef,undef,undef,undef);
$list->insert_before($itc,111,undef,$item1,undef,undef,undef);
$list->insert_after($itc,444,undef,$item1,undef,undef,undef);
$list->item_prepend($itc,"000",undef,undef,undef,undef);

$list->size_hint_weight_set(EVAS_HINT_EXPAND,EVAS_HINT_EXPAND);
$win->resize_object_add($list);

my $i = 777;
for ($i; $i < 800; $i++) {
my $item3 = $list->item_prepend($itc,$i,undef,undef,undef,undef);
}

$list->show();

$win->show();


Efl::Elm::run();

#print "Exiting ...\n";
Efl::Elm::shutdown();

sub del_cb {
}

sub _text_get {
    my ($data, $obj, $part) = @_;
    return "Hello $part $data";
}

sub _content_get {
    my ($data, $obj, $part) = @_;
    #print "PART $part\n";
    my $icon = Efl::Elm::Icon->add($obj);
    if ($part eq "elm.swallow.icon") {
        $icon->standard_set("clock");
    }
    #$icon->size_hint_aspect_set(0.5, 1, 1);
    return $icon;
}

sub _select_item {
    my ($data, $obj, $evInfo) = @_;
    my @arr = $obj->selected_items_get_pv();
    foreach my $item (@arr) {
        $item->del();
    }
    
}
