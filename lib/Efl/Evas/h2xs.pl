#!/usr/bin/perl
use strict;
use warnings;

use Getopt::Std;

our ($opt_i, $opt_o, $opt_e, $opt_d);
getopts('i:o:e:d:');

my $infile = "./stripped.h";
my $outfile = $opt_o || "./out.xs";

if ($opt_i) {
    print "First strip of unnecessary part\n";
    system("perl ./strip.pl $opt_i > ./stripped.h");
}

if ($opt_e) {
    #die "OPT E $opt_e\n";
}
my $evas_obj = $opt_e || "EvasObject";
my $evas_obj_d = $opt_d || "Evas_Object";


open my $in, "<", $infile;

open my $out, ">", $outfile;

while (my $line = <$in>) {
    print "Processing $line\n";
    if ($line =~ m/\s*([A-Za-z_\*]+)\s+([A-Za-z_\*]++)\((.*)\)\;/ ) {
        print "**************************\n";
        print "Funktion erkannt:\n";
        
        my $retType = $1;
        my $funcname = $2;
        my $args = $3;
        
        $retType =~ s/$evas_obj_d/$evas_obj/e;
        $retType = "$retType *" if ($funcname =~ m/^\*/);
        
        print "Rückgabetyp $retType\n";
        
        
        $funcname =~ s/^\*//;
        print "Funktionsname $funcname\n";
        
        my @args;
        my @args_raw = split ",",$args;
        my @args_pure;
        print "Argumente:\n";
        foreach my $arg (@args_raw) {
            my ($type, $name) = $arg =~ m/^(.*\s)(.*)/;
            
            $type =~ s/$evas_obj_d/$evas_obj/e;
            $type =~ s/\s+$//;
            $type =~ s/^\s?//;
            
            
            my $argname = $name;
            $argname =~ s/^\*//;
            print "\t Typ: $type \t Name: $name\n";
            
            
            my %hash = (type => $type, argname => $argname, name => $name);
            push @args, \%hash;
        }
        print "**************************\n";
        print "OUTPUT XS:\n";
        
        print "$retType\n";
        print $out "$retType\n";
        
        print "$funcname(";
        print $out "$funcname(";
        
        ###################################################
        # Process the argument names (without type and asterisks!)
        #################################################
        my $i;
        for ($i =0; $i <= $#args; $i++) {
            print $args[$i]->{argname};
            print "," if ($i < $#args);
            
            print $out $args[$i]->{argname};
            print $out "," if ($i < $#args);
        }
        print ")\n";
        print $out ")\n";
        
        ##############################################
        # Process the Arguments with Type
        ###########################################
        for ($i =0; $i <= $#args; $i++) {
            print "\t" . $args[$i]->{type} . " " . $args[$i]->{name} . "\n";
            print $out "\t" . $args[$i]->{type} . " " . $args[$i]->{name} . "\n";
        }
        print "\n\n";
        print $out "\n\n";
        print "**************************\n";
    }
    else {
        #print $out "// Not recognized part\n//$line\n\n";
    }
    
}

close $in;
close $out;
