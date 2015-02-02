#! /usr/bin/perl

use strict;
use warnings;
use Test::Most;

use Locale::Country::Capital qw(country2capital);

subtest "Invalid country specified" => sub {
    my $invalid_country = 'invalid';

    dies_ok { country2capital($invalid_country) };
    throws_ok( sub { country2capital($invalid_country) },
        qr/$invalid_country not found/ );

    throws_ok( sub { country2capital('') },
        qr/country2capital requires a country string/ );
};

done_testing;
