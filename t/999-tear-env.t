#!/usr/bin/perl
use lib 't/lib';
use lib 'lib';
use MyTests;


use strict;
use warnings;

use Shell::Command;
use Test::Most;

chdir 't' or die $!;

if (!-d 'etc') {
	plan skip_all => 'No need to tear previous env.';
}

ok rm_rf 'etc';

done_testing;
