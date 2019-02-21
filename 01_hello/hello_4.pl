#!/usr/bin/env perl

# It's a good habit to start our script with two "pragmas"
# that enforce a "strict" programming style.
# (They will make our program complain more, but preventing
# headaches in debugging valid but meaningless code.)
use strict;
use warnings;

# When printing by default we print on the STandard OUTput:
print STDOUT "Hello to the STDOUT (1)!\n";

# You can explicity specify to print on STDOUT like this:
print STDOUT "Hello to the STDOUT (2)!\n";

# But we can also print to the STandard ERRor (STDERR):
print STDERR 'Hello, standard error!\n";

