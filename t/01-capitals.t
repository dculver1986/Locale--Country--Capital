#! /usr/bin/perl

use strict;
use warnings;

use Test::More;
use Test::WWW::Mechanize;
use Locale::Country::Capital qw( country2capital get_all_countries);

my @countries = get_all_countries();

my $mech = Test::WWW::Mechanize->new;

for my $country (@countries) {

    my $capital = country2capital($country);

    if ( $country eq 'Palestine, State of' ) {
        $mech->get("http://en.wikipedia.org/wiki/State_of_Palestine");
        $mech->content_contains( $capital, "Contains capital for $country" );
        next;
    }
    if ( $country eq 'Virgin Islands (British)' ) {
        $mech->get("http://en.wikipedia.org/wiki/British_Virgin_Islands");
        $mech->content_contains( $capital, "Contains capital for $country" );
        next;
    }
    if ( $country eq 'Virgin Islands (U.S.)' ) {
        $mech->get("http://en.wikipedia.org/wiki/United_States_Virgin_Islands");
        $mech->content_contains( $capital, "Contains capital for $country" );
        next;
    }
    if ( $country eq 'Macedonia' ) {
        $mech->get("http://en.wikipedia.org/wiki/Republic_of_Macedonia");
        $mech->content_contains( $capital, "Contains capital for $country" );
        next;

    }
    if ( $country eq 'Congo, Democratic Republic of the' ) {
        $mech->get("http://en.wikipedia.org/wiki/Democratic_Republic_of_the_Congo");
        $mech->content_contains( $capital, "Contains capital for $country" );
        next;

    }
    $mech->get("http://en.wikipedia.org/wiki/$country");
    $mech->content_contains( $capital, "Contains capital for $country" );
}

done_testing;
