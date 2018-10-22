#!/usr/bin/env perl

use strict;
use warnings;

my $name1 = 'Andrea';
my $name2 = 'Lisa';

# An array is an ORDERED LIST of scalars.
# Its sigil is the '@';

# Explicit assignment of values to a new array:
# (as you can see you can add both pre-declared scalar variables or scalar values
my @people = ($name1, 'John', $name2);

# And also mix numbers and strings
my @elements = ($name2, 3.2, 10, 'String');

# Each element of an array has an index, starting with 0:
print "ARRAY ELEMENTS:\n";
print "The first element of \@people is $people[0]\n";
print "The second element of \@people is $people[1]\n";

# As you can see the whole array is @arrayname but an element of an array is a scalar, thus $arrayname[index]

# The last index of an array is stored in the special variable $#arrayname:
print "The last index of \@people is $#people\n";
