use Efl::Evas::Object;
use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::List;
use Efl::Elm::ListItem;
use Efl::Elm::Icon;
use Efl::Elm::Button;
use Efl::Elm::ObjectItem;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM::POLICY_QUIT, ELM::POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("Main", "Hello, World");

$win->autodel_set(1);

$win->resize(400,400);

my $list = Efl::Elm::List->add($win);

$list->resize(320,300);

$list->mode_set(ELM::LIST_LIMIT);

$list->item_append("Text item",undef, undef,undef,undef);

my $icon = Efl::Elm::Icon->add($list);
$icon->standard_set("chat");
$list->item_append("Icon item", $icon, undef,undef,undef);

my $button = Efl::Elm::Button->add($list);
$button->text_set("Button");

my $itembutton = $list->item_append("Button item", undef, $button, undef,undef);
$list->go();
$list->show();

$list->smart_callback_add("selected", _prepend_itembutton_cb, $itembutton);

$win->show();

Efl::Elm::run();

#print "Exiting ...\n";
Efl::Elm::shutdown();

sub _prepend_itembutton_cb {
    my ($data, $obj, $event_info) = @_;
    use Data::Dumper;
    print "DAT " . Dumper($data);
    my $li = $obj;

    my $selected = $li->selected_item_get();
    my $next = $selected->next;
    print "SELECTED $selected\n DATA $data \n";
    print "NEXT $next\n";

    #my $text = Efl::Elm::ObjectItem::text_get($next);
    my $text = $next->text_get();
    print "TEXT $text\n";
    $li->item_insert_before($next,"Hello Perl", undef, undef, undef, undef);
    $li->go();
}
