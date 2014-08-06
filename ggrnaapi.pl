#!/usr/bin/perl

my $url = "http://ggrna.dbcls.jp/hs/iub%3aAGGTCAnnnTGACCT.txt";

open(FILE, "curl -s $url |") or die "$!\n";
#open(FILE, "wget -O - $url |") or die "$!\n";
while(<FILE>) {
	chomp;
	next if(/^\#/);
	my @words = split(/\t/);
	print $words[4]."\n";
}
close FILE
