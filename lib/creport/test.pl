#! /usr/bin/perl -w

# creport test script
## clushopt --pick=10
## groupby results
## errors show

use 5;
use warnings;
use strict;

print "Test script $0 @ARGV\n";

print "Time ", time(), "\n";


# Look at what /proc reports.
# Sadly $0 already set within creport
if (open CMD, '<', "/proc/$$/cmdline")
{
	while (<CMD>)
	{
		print "Proc cmdline '", join("' '", split(/\0/, $_)), "'\n";
	}
}

warn "error collection\n";

exit 0;

