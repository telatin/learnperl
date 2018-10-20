#!/usr/bin/env perl

use strict;
use warnings;

# Here I create a box called 'my_name', and assign to it a content
# This variable will be a string as it contains a string
my $my_name = 'Andrea';

# Here I create a box called 'my_name', and assign to it a content
# This variable will be a integer as it contains a number (integer)
my $lucky_number = 9;

# We can use variables in print statements, but only if we use double quotes:
print "My name is $my_name\n";

# Check the difference:
print 'My name is $my_name\n';

# Let's add a new line at the end of our output...
print "\n";
