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

# Push: a function to add one or more elements _at the end_ of an array:
push(@people, 'Hannah', 'Perla');
print "People after _push_: @people\n";


# Unshift: a function to add one or more elementsa _at the beginning of an array:

unshift(@people, 'Bob');
print "People after _unshift_: @people\n";
