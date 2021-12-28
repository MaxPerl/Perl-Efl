#!/usr/bin/perl

undef $/;
$text = <>;

$text =~ s/EAPI//g;
#$text =~ s/const//g;
$text =~ s/\/\/[^\n\r]*(\n\r)?//g;
$text =~ s/\/\*+([^*]|\*(?!\/))*\*+\///g;

print $text;
