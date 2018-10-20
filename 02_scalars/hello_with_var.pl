#!/usr/bin/env perl

# It's a good habit to start our script with two "pragmas"
# that enforce a "strict" programming style.
# (They will make our program complain more, but preventing
# headaches in debugging valid but meaningless code.)
use strict;
use warnings

# Here we declare a variable, assigning to it the value 'Andrea'.
# This variable is thus a string
my $name = 'Andrea';

# An array is a list of elements.
# Here we declare one
my @names = ('Carl', 'Hannah', $name);

# Now we can use a single element of the
# array using this notation and an index (starting 
# with 0 for the first element)
print "Hello $names[0]!\n";
print "Hello $names[1]!\n";
print "Hello $names[2]!\n";

