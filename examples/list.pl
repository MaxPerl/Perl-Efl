use Efl::Elm;
use Efl::Elm::Win;
use Efl::Elm::List;
use Efl::Elm::Icon;
use Efl::Elm::Button;

Efl::Elm::init($#ARGV, \@ARGV);

Efl::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = Efl::Elm::Win->util_standard_add("Main", "Hello, World");

$win->autodel_set(1);

$win->resize(400,400);

my $list = Efl::Elm::List->add($win);

$list->resize(320,300);

$list->mode_set(ELM_LIST_LIMIT);

$list->item_append("Text item",undef, undef,undef,undef);

my $icon = Efl::Elm::Icon->add($list);
$icon->standard_set("chat");
$list->item_append("Icon item", $icon, undef,undef,undef);

my $button = Efl::Elm::Button->add($list);
$button->text_set("Button");

my $itembutton = $list->item_append("Button item", undef, $button, undef,undef);
$list->go();
$list->show();

$list->smart_callback_add("selected", \&_prepend_itembutton_cb, $itembutton);

$win->show();

Efl::Elm::run();

Efl::Elm::shutdown();

sub _prepend_itembutton_cb {
    my ($data, $obj, $event_info) = @_;
    my $li = $obj;

    my $selected = $li->selected_item_get();
    my $next = $selected->next;
    
	if ($next) {
		my $text = $next->text_get();
		print "Text of next item: $text\n";
		$li->item_insert_before($next,"Hello Perl", undef, undef, undef, undef);
		$li->go();
    }
    
}
