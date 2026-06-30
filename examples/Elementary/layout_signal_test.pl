#!/usr/bin/perl
use warnings;

use pEFL::Evas;
use pEFL::Elm;
use pEFL::Ecore;

# ----------------------------------------------------------------
# Test: Mehrere Callbacks auf gleiche emission/source (elm layout)
#
# Ablauf (gesteuert über Timer, 1.5s Intervall > 0.5s Animation):
#   Schritt 1 – beide Callbacks registriert, signal_emit
#   Schritt 2 – Ergebnis Schritt 1 prüfen, callback_A löschen, signal_emit
#   Schritt 3 – Ergebnis Schritt 2 prüfen, callback_B löschen, signal_emit
#   Schritt 4 – Ergebnis Schritt 3 prüfen, App beenden
# ----------------------------------------------------------------

my $step = 0;
my $errors = 0;
my %fired = (A => 0, B => 0);

sub reset_fired { %fired = (A => 0, B => 0) }

sub check {
    my ($step, $expect_A, $expect_B) = @_;
    my $ok_A = ($fired{A} == $expect_A);
    my $ok_B = ($fired{B} == $expect_B);
    printf "  Schritt %d: callback_A gefeuert %dx (erwartet %d) -> %s\n",
        $step, $fired{A}, $expect_A, $ok_A ? "OK" : "FEHLER";
    printf "  Schritt %d: callback_B gefeuert %dx (erwartet %d) -> %s\n",
        $step, $fired{B}, $expect_B, $ok_B ? "OK" : "FEHLER";
    $errors++ unless ($ok_A && $ok_B);
}

sub _cb_A {
    my ($data, $layout, $emission, $source) = @_;
    $fired{A}++;
    print "  [callback_A] feuert (emission=$emission)\n";
}

sub _cb_B {
    my ($data, $layout, $emission, $source) = @_;
    $fired{B}++;
    print "  [callback_B] feuert (emission=$emission)\n";
}

sub _timer_cb {
    my ($layout) = @_;
    $step++;

    if ($step == 1) {
        print "\n=== Schritt 1: Beide Callbacks registriert, signal_emit ===\n";
        reset_fired();
        $layout->signal_emit("button,enlarge", "");
        return 1;
    }
    elsif ($step == 2) {
        check(1, 1, 1);
        print "\n=== Schritt 2: callback_A geloescht, signal_emit ===\n";
        $layout->signal_callback_del("size,changed", "", \&_cb_A);
        reset_fired();
        $layout->signal_emit("button,reduce", "");
        return 1;
    }
    elsif ($step == 3) {
        check(2, 0, 1);
        print "\n=== Schritt 3: callback_B geloescht, signal_emit ===\n";
        $layout->signal_callback_del("size,changed", "", \&_cb_B);
        reset_fired();
        $layout->signal_emit("button,enlarge", "");
        return 1;
    }
    elsif ($step == 4) {
        check(3, 0, 0);
        print "\n=== Ergebnis ===\n";
        if ($errors == 0) {
            print "ALLE TESTS BESTANDEN\n";
        }
        else {
            print "$errors TEST(S) FEHLGESCHLAGEN\n";
        }
        pEFL::Elm::exit();
        return 0;
    }

    return 1;
}

# --- Setup ---
pEFL::Elm::init($#ARGV, \@ARGV);
pEFL::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = pEFL::Elm::Win->util_standard_add("signal_test", "Signal Callback Test");
$win->autodel_set(1);

my $layout = pEFL::Elm::Layout->add($win);
$layout->size_hint_weight_set(EVAS_HINT_EXPAND, EVAS_HINT_EXPAND);
$win->resize_object_add($layout);
$layout->file_set("./layout_example.edj", "example/mylayout3");
$layout->show();

# Beide Callbacks auf dieselbe emission/source -- kritischer Fall
$layout->signal_callback_add("size,changed", "", \&_cb_A, "data_A");
$layout->signal_callback_add("size,changed", "", \&_cb_B, "data_B");
print "Callbacks A und B registriert fuer 'size,changed' / ''\n";

my $btn = pEFL::Elm::Button->add($win);
$btn->text_set("(Test laeuft automatisch)");
$layout->part_content_set("example/custom", $btn);

$win->resize(320, 160);
$win->show();

# 1.5s Intervall: Animation dauert 0.5s, also genug Puffer
pEFL::Ecore::Timer->add(1.5, sub { _timer_cb($layout) });

pEFL::Elm::run();
pEFL::Elm::shutdown();