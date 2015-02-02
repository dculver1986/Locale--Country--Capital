package Locale::Country::Capital;

use strict;
use warnings;
use Carp qw(croak);

use Exporter;

our @ISA       = qw(Exporter);
our @EXPORT_OK = qw( country2capital get_all_countries );

# VERSION 0.1.0
# ABSTRACT: Module to provide capital from given country

=pod

=encoding utf8

=head1 NAME

    Locale::Country::Capital - Module to provide Country Capitals

=head1 SYNOPSIS

    use strict;
    use warnings;

    use Locale::Country::Capital qw(country2capital);

    my $country = 'United States';
    my $capital = country2capital($country);

=head1 DESCRIPTION

    This module will take a country string and return a string of its capital.
    Some territories, like Antarctica, do not have a capital. In this case it
    return an empty string.

=head1 METHODS

=head2 country2capital
    use strict;
    use warnings;

    use Locale::Country::Capital qw(country2capital);

    my $country = 'Japan';
    my $capital = country2capital($country);

    print $capital . " is the capital\n";

Returns a string of the country capital. Returns an empty string if country has no capital.
It does not return unicode characters in the capital string.

=head2 get_all_countries

    use strict;
    use warnings;

    use Locale::Country::Capital qw(get_all_countries);

    my @countries = get_all_countries();

Returns an Array of all countries in the country/capital lookup table.

=head1 BUGS AND LIMITATIONS

I acknowledge the possibility that some countries may be missing fro this module or have
changed their capital since the release of this module. Wikipedia was used as the source
for the capitals. If you notice inconsistencies, please feel free to email me or submit
a pull request if you wish to contribute.

=head1 AUTHOR

Daniel Culver, C<< perlsufi@cpan.org >>

=head1 ACKNOWLEDGEMENTS

Wikipedia
HostGator

=head1 LICENSE AND COPYRIGHT

This module is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut

our %country_hash = (
    'Tuvalu'                         => 'Funafuti',
    'Sweden'                         => 'Stockholm',
    'Tonga'                          => "Nuku'alofa",
    'Nepal'                          => 'Kathmandu',
    'Somalia'                        => 'Mogadishu',
    'Guinea'                         => 'Conakry',
    'Nauru'                          => 'Yaren',
    'Kosovo'                         => 'Pristina',
    'Mozambique'                     => 'Maputo',
    'Guyana'                         => 'Georgetown',
    'Ethiopia'                       => 'Addis Ababa',
    'Equatorial Guinea'              => 'Malabo',
    'South Africa'                   => 'Pretoria',
    'Peru'                           => 'Lima',
    'Indonesia'                      => 'Jakarta',
    'Sao Tome and Principe'          => 'Sao Tome',
    'Argentina'                      => 'Buenos Aires',
    'Portugal'                       => 'Lisbon',
    'Nigeria'                        => 'Abuja',
    'Solomon Islands'                => 'Honiara',
    'Latvia'                         => 'Riga',
    'Dominican Republic'             => 'Santo Domingo',
    'Antigua and Barbuda'            => "Saint John's",
    'Turkey'                         => 'Ankara',
    'Micronesia'                     => 'Palikir',
    'Serbia'                         => 'Belgrade',
    'Saint Lucia'                    => 'Castries',
    'Tunisia'                        => 'Tunis',
    'Palestine, State of'            => 'Jerusalem',
    'Morocco'                        => 'Rabat',
    'Malawi'                         => 'Lilongwe',
    'Mauritius'                      => 'Port Louis',
    'Maldives'                       => 'Male',
    'Bangladesh'                     => 'Dhaka',
    'Netherlands'                    => 'Amsterdam',
    'Brazil'                         => 'Brasilia',
    'Japan'                          => 'Tokyo',
    'Paraguay'                       => 'Asuncion',
    'Ecuador'                        => 'Quito',
    'Mali'                           => 'Bamako',
    'Croatia'                        => 'Zagreb',
    'Swaziland'                      => 'Mbabane',
    'Jamaica'                        => 'Kingston',
    'Dominica'                       => 'Roseau',
    'Slovenia'                       => 'Ljubljana',
    'Israel'                         => 'Jerusalem',
    'Madagascar'                     => 'Antananarivo',
    'India'                          => 'New Delhi',
    'Belize'                         => 'Belmopan',
    'Botswana'                       => 'Gaborone',
    'Namibia'                        => 'Windhoek',
    'Malta'                          => 'Valletta',
    'Algeria'                        => 'Algiers',
    'Taiwan'                         => 'Taipei',
    'Laos'                           => 'Vientiane',
    'Azerbaijan'                     => 'Baku',
    'Bulgaria'                       => 'Sofia',
    'Lebanon'                        => 'Beirut',
    'Iraq'                           => 'Baghdad',
    'Thailand'                       => 'Bangkok',
    'Barbados'                       => 'Bridgetown',
    'United Arab Emirates'           => 'Abu Dhabi',
    'Singapore'                      => 'Singapore',
    'Belarus'                        => 'Minsk',
    'Viet Nam'                       => 'Hanoi',
    'Niger'                          => 'Niamey',
    'Ukraine'                        => 'Kiev',
    'Romania'                        => 'Bucharest',
    'Cameroon'                       => 'Yaounde',
    'Greece'                         => 'Athens',
    'Grenada'                        => "St. George's",
    'Germany'                        => 'Berlin',
    'San Marino'                     => 'San Marino',
    'Burkina Faso'                   => 'Ouagadougou',
    'Belgium'                        => 'Brussels',
    'Monaco'                         => 'Monaco',
    'Chile'                          => 'Santiago',
    'United States'                  => 'Washington',
    'Uzbekistan'                     => 'Tashkent',
    'Haiti'                          => 'Port-au-Prince',
    'Costa Rica'                     => 'San Jose',
    'France'                         => 'Paris',
    'Kiribati'                       => 'Tarawa',
    'Malaysia'                       => 'Kuala Lumpur',
    'Comoros'                        => 'Moroni',
    'Cambodia'                       => 'Phnom Penh',
    'Libya'                          => 'Tripoli',
    'American Samoa'                 => 'Apia',
    'Panama'                         => 'Panama City',
    'Rwanda'                         => 'Kigali',
    'Uruguay'                        => 'Montevideo',
    'Syria'                          => 'Damascus',
    'Saint Kitts and Nevis'          => 'Basseterre',
    'Benin'                          => 'Porto-Novo',
    'Mongolia'                       => 'Ulan Bator',
    'Hungary'                        => 'Budapest',
    'Trinidad and Tobago'            => 'Port of Spain',
    'Liechtenstein'                  => 'Vaduz',
    'Pakistan'                       => 'Islamabad',
    'Sri Lanka'                      => 'Colombo',
    'Suriname'                       => 'Paramaribo',
    'China'                          => 'Beijing',
    'Sierra Leone'                   => 'Freetown',
    'Congo'                          => 'Brazzaville',
    'Estonia'                        => 'Tallinn',
    'Eritrea'                        => 'Asmara',
    'Angola'                         => 'Luanda',
    "Cote d'Ivoire"                  => 'Yamoussoukro',
    'Guatemala'                      => 'Guatemala City',
    'Armenia'                        => 'Yerevan',
    'Saudi Arabia'                   => 'Riyadh',
    'Guinea-Bissau'                  => 'Bissau',
    'Oman'                           => 'Muscat',
    'Turkmenistan'                   => 'Ashgabat',
    'Honduras'                       => 'Tegucigalpa',
    'Ireland'                        => 'Dublin',
    'Vanuatu'                        => 'Port Vila',
    'Saint Vincent and the Grenadines' => 'Kingstown',
    'Qatar'                          => 'Doha',
    'Nicaragua'                      => 'Managua',
    'Czech Republic'                 => 'Prague',
    'Central African Republic'       => 'Bangui',
    'Iceland'                        => 'Reykjavik',
    'Ghana'                          => 'Accra',
    'Mexico'                         => 'Mexico City',
    'Bahamas'                        => 'Nassau',
    'Djibouti'                       => 'Djibouti',
    'El Salvador'                    => 'San Salvador',
    'Slovakia'                       => 'Bratislava',
    'Tajikistan'                     => 'Dushanbe',
    'Poland'                         => 'Warsaw',
    'Togo'                           => 'Lome',
    'Cuba'                           => 'Havana',
    'Moldova'                        => 'Chisinau',
    'Spain'                          => 'Madrid',
    'Gabon'                          => 'Libreville',
    'Kenya'                          => 'Nairobi',
    'Egypt'                          => 'Cairo',
    'Bolivia'                        => 'Sucre',
    'Australia'                      => 'Canberra',
    'Macedonia'                      => 'Skopje',
    'United Kingdom'                 => 'London',
    'Switzerland'                    => 'Bern',
    'Lithuania'                      => 'Vilnius',
    'Norway'                         => 'Oslo',
    'Marshall Islands'               => 'Majuro',
    'Canada'                         => 'Ottawa',
    'Cyprus'                         => 'Nicosia',
    'Montenegro'                     => 'Podgorica',
    'Luxembourg'                     => 'Luxembourg',
    'Papua New Guinea'               => 'Port Moresby',
    'Brunei'                         => 'Bandar Seri Begawan',
    'Iran'                           => 'Tehran',
    'Kyrgyzstan'                     => 'Bishkek',
    'Mauritania'                     => 'Nouakchott',
    'Seychelles'                     => 'Victoria',
    'Russian Federation'              => 'Moscow',
    'Korea'                          => 'Seoul',
    'North Korea'                    => 'Pyongyang',
    'Finland'                        => 'Helsinki',
    'Tanzania'                       => 'Dar es Salaam',
    'Palau'                          => 'Melekeok',
    'Chad'                           => "N'Djamena",
    'Fiji'                           => 'Suva',
    'Austria'                        => 'Vienna',
    'Kazakhstan'                     => 'Astana',
    'South Sudan'                    => 'Juba',
    'Cape Verde'                     => 'Praia',
    'Jordan'                         => 'Amman',
    'Lesotho'                        => 'Maseru',
    'Uganda'                         => 'Kampala',
    'Philippines'                    => 'Manila',
    'Italy'                          => 'Rome',
    'Bhutan'                         => 'Thimphu',
    'Timor-Leste'                    => 'Dili',
    'New Zealand'                    => 'Wellington',
    'Colombia'                       => 'Bogota',
    'Gambia'                         => 'Banjul',
    'Liberia'                        => 'Monrovia',
    'Bahrain'                        => 'Manamah',
    'Burundi'                        => 'Bujumbura',
    'Myanmar'                        => 'Naypyidaw',
    'Bosnia and Herzegovina'         => 'Sarajevo',
    'Kuwait'                         => 'Kuwait',
    'Venezuela'                      => 'Caracas',
    'Georgia'                        => 'Tbilisi',
    'Sudan'                          => 'Khartoum',
    'Afghanistan'                    => 'Kabul',
    'Denmark'                        => 'Copenhagen',
    'Senegal'                        => 'Dakar',
    'Andorra'                        => 'Andorra la Vella',
    'Albania'                        => 'Tirana',
    'Aland Islands'                  => 'Mariehamn',
    'Anguilla'                       => 'The Valley',
    'Antarctica'                     => '',
    'Yemen'                          => "Sana'a",
    'Zambia'                         => 'Lusaka',
    'Western Sahara'                 => '',
    'Wallis and Futuna'              => 'Mata-Utu',
    'Virgin Islands (British)'       => 'Road Town',
    'Virgin Islands (U.S.)'          => 'Charlotte Amalie',
    'Turks and Caicos Islands'       => 'Cockburn Town',
    'Bonaire'                        => 'Kralendijk',
    'Bermuda'                        => 'Hamilton',
    'Montserrat'                     => 'Plymouth',
    'Saint Helena'                   => 'Jamestown',
    'Saint Barthelemy'               => 'Gustavia',
    'Collectivity of Saint Martin'   => 'Marigot',
    'Sint Maarten'                   => 'Philipsburg',
    'South Georgia and the South Sandwich Islands' =>  'King Edward Point',
    'Niue'                           => 'Alofi',
    'Zimbabwe'                       => 'Harare',
    'New Caledonia'                  => 'Noumea',
);

sub country2capital {
    my $country = shift || croak "country2capital requires a country string";

    if ( exists $country_hash{$country} ) {
        return $country_hash{$country};
    }
    else {
        croak "$country not found";
    }
};

sub get_all_countries {

    my @countries;
    for my $country ( sort keys %country_hash ) {
        push @countries, $country;
    }

    return @countries;
};

1;
