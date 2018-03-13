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

# Now we can use the variable in a print statement:
print "Hello $name!\n";

# And see what's happen with single quotes:
print 'Hello $name!\n';

