#!/usr/bin/perl
use strict;
use warnings;
use utf8;

# Richtige pEFL-Module laden
use pEFL;
use pEFL::Elm;

$pEFL::Debug = 1;

# 1. Initialisierung von Elementary
pEFL::Elm::init($#ARGV, \@ARGV);

# 2. Hauptfenster erstellen und konfigurieren
pEFL::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);
my $win = pEFL::Elm::Win->util_standard_add("SegmentControl", "Segment Control Example");
$win->autodel_set(1);

# Hintergrund-Widget hinzufügen (Standard im klassischen EFL)
my $bg = pEFL::Elm::Bg->add($win);
$bg->size_hint_weight_set(1.0, 1.0);
$win->resize_object_add($bg);
$bg->show();

# 3. Eine vertikale Box für das Layout anlegen
my $box = pEFL::Elm::Box->add($win);
$box->size_hint_weight_set(1.0, 1.0);
$win->resize_object_add($box);
$box->show();

# 4. SegmentControl Widget mit der klassischen API erstellen
my $seg = pEFL::Elm::SegmentControl->add($win);
$seg->size_hint_weight_set(1.0, 0.0);
$seg->size_hint_align_set(1.0, 0.5); # Horizontal füllen
$seg->show();

# 5. Segmente (Items) hinzufügen
# Syntax: $seg->item_append(icon_object, text)
# Da wir keine separaten Icons nutzen, übergeben wir undef für das Icon-Widget
my $item1 = $seg->item_add(undef, "Option A");
my $item2 = $seg->item_add(undef, "Option B");
my $item3 = $seg->item_add(undef, "Option C");

# Ein Standardsegment vorauswählen
$item2->selected_set(1);
$item2->data_set("Hello");

use Data::Dumper;
print "SET $item2 with addr " . $$item2 . Dumper($pEFL::PLSide::ItemData{$$item2}) . "\n";

# 6. Callback für die Auswahl-Änderung registrieren
# Das Event in der Legacy-API für Wertänderungen heißt "changed"
$seg->smart_callback_add("changed", sub {
    my ($data, $obj, $event_info) = @_;
    
    # Das aktuell ausgewählte Item-Objekt holen
    my $selected_item = $obj->item_selected_get();
    
    if ($selected_item) {
        # Den Text des Items auslesen
        my $selected_text = $selected_item->text_get();
        print "Select Segment: $selected_text\n";
    }
}, undef);

# 7. SegmentControl in die Box packen und das Fenster anzeigen
$box->pack_end($seg);
$win->resize(400, 150);
$win->show();

# 8. Hauptschleife starten
pEFL::Elm::run();
pEFL::Elm::shutdown();