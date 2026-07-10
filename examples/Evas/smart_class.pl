#!/usr/bin/perl
use strict;
use warnings;

use pEFL;
use pEFL::Elm;
use pEFL::Evas;
use pEFL::PerlSmartClass;
use pEFL::PerlSmartObject;
use pEFL::PLSide;

# =============================================================================
# My::Widget - our Perl Smart Class
#
# Inheritance:
#   My::Widget
#       ISA PerlSmartObjectPtr   (add(), parent_sc() etc.)
#           ISA EvasObjectPtr    (move(), resize(), show() etc.)
# =============================================================================

package My::Widget;

use pEFL::Evas;
use pEFL::PerlSmartClass;

our @ISA = qw(PerlSmartObjectPtr);

# Class-wide variable for our registered SmartClass
# (Singleton—created only once)
my $smart_class;

sub _on_bg_mouse_down {
	my ($data, $bg, $ev_info) = @_;
	$data->smart_callback_call_pv("clicked", "Hello World! from Perl");
}

# -----------------------------------------------------------------------------
# Public constructor - as `mywidget_add(Evas *evas)` in C
# -----------------------------------------------------------------------------
sub add {
    my ($class, $parent) = @_;

    # Register the SmartClass on the first call (singleton)
    unless ($smart_class) {
        $smart_class = pEFL::PerlSmartClass->register_class($class, PERLSMARTCLASS_BASE_CLIPPED);
        #$smart_class = pEFL::PerlSmartClass->register_class("My::Widget");
		print "smart_class: $smart_class\n";
		print "ref: ", ref($smart_class), "\n";
    }

    # Retrieve evas from the parent object 
    my $evas = $parent->evas_get();

    # Create the Smart Object (= Single Instance of Smart Class)
    # This triggers _add() internally (via the perl_smart_add trampoline in PLSmart.c)
    my $obj = PerlSmartObjectPtr->add($evas, $smart_class);

    return $obj;
}

# -----------------------------------------------------------------------------
# Vtable callbacks (underscore prefix to avoid conflicts with the public API
# register_class in PLSmart.c looks for "_add", "_del", etc.) 
# -----------------------------------------------------------------------------

sub _add {
    my ($obj) = @_;
    print "*** _add called for: $obj\n";
    
    $obj->parent_sc->add($obj);
    
    my $evas    = $obj->evas_get();
    print "*** evas: $evas\n";
    my $objaddr = $$obj;

    my $bg = pEFL::Evas::Rectangle->add($evas);
    print "*** bg: $bg\n";
    $bg->color_set(40, 90, 200, 255);
    $bg->smart_member_add($obj);
    $bg->show();
    
    $bg->event_callback_add(EVAS_CALLBACK_MOUSE_DOWN, \&_on_bg_mouse_down, $obj);

    my $label = pEFL::Evas::Text->add($evas);
    print "*** label: $label\n";
    $label->font_set("Sans", 16);
    $label->text_set("Hello Smart Object!");
    $label->color_set(255, 255, 255, 255);
    $label->smart_member_add($obj);
    $label->show();

	# Save the Data in the PerlObjects private Hash
    $obj->data_set({bg => $bg, label => $label});
    print "*** _add finish\n";
}

sub _del {
    my ($obj) = @_;
    print "*** _del called\n";
    
    my $data    = $obj->data_get();

    $data->{bg}->del()    if $data->{bg};
    $data->{label}->del() if $data->{label};
	
    $obj->parent_sc->del($obj);
}

sub _move {
    my ($obj, $x, $y) = @_;
    print "*** _move x=$x y=$y\n";
    print "*** Perl class is " . $obj->pclass . "\n";
    
    my $data    = $obj->data_get();

    my $clipper = $obj->smart_clipped_clipper_get();
    $clipper->move($x, $y) if $clipper;

    $data->{bg}->move($x, $y)              if $data->{bg};
    $data->{label}->move($x + 10, $y + 10) if $data->{label};
}

sub _resize {
    my ($obj, $w, $h) = @_;
    print "*** _resize w=$w h=$h\n";
    
    my $data    = $obj->data_get();
    
    my ($x, $y) = $obj->geometry_get();
    print "*** _resize x=$x y=$y\n";

    my $clipper = $obj->smart_clipped_clipper_get();
    if ($clipper) {
        $clipper->move($x, $y);
        $clipper->resize($w, $h);
    }

    $data->{bg}->resize($w, $h)             if $data->{bg};
    $data->{label}->move($x + 10, $y + 10)  if $data->{label};
}

# =============================================================================
# Main programm
# =============================================================================

package main;

pEFL::Elm::init($#ARGV, \@ARGV);
pEFL::Elm::policy_set(ELM_POLICY_QUIT, ELM_POLICY_QUIT_LAST_WINDOW_CLOSED);

my $win = pEFL::Elm::Win->add(undef, "smart_example", ELM_WIN_BASIC);
$win->title_set("Evas Smart Example");
$win->autodel_set(1);
$win->resize(400, 300);
$win->show();

# Background
my $bg = pEFL::Elm::Bg->add($win);
$bg->size_hint_weight_set(1.0, 1.0);
$win->resize_object_add($bg);
$bg->show();

# Create the smart Object
my $widget = My::Widget->add($win);
$widget->move(50, 50);
$widget->resize(250, 120);
$widget->show();

# Register Smart Callback Handler
$widget->smart_callback_add("clicked", \&_on_widget_clicked, undef);

pEFL::Elm::run();
pEFL::Elm::shutdown();

sub _on_widget_clicked {
	my ($data, $obj, $ev_info) = @_;
	my $s_event = pEFL::ev_info2pv($ev_info);
	print("clicked with event_info $s_event\n");
}
