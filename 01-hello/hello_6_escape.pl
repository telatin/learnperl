#!/usr/bin/env perl

# It's a good habit to start our script with two "pragmas"
# that enforce a "strict" programming style.
# (They will make our program complain more, but preventing
# headaches in debugging valid but meaningless code.)
use strict;
use warnings;

# You will see that the double quotes INTERPOLATE their content. So unless you want so always us the single quotes.
# Print can be used with MULTIPLE strings, separated by comma. 
# This way we can add the special new line char at the end without needing to double quote the whole string.
print 'PRINT 1:  This is a safe way to print text', "\n";
 
print 'PRINT 2:  For example $strings starting with a dollar are special.', "\n";

# To avoid interpolation use the "\" escape characher that will make the following one literal:
print "PRINT 3:  For example \$strings starting with a dollar are special. This was escaped!\n";
