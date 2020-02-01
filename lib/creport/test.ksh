#!/bin/ksh

## title creport test script title

## Double hash comment
# Single hash comment

### This is a test script (info line).
### Line 2 of the info.

## groupby results
## post sed -e 's/$/%/' -e 's/:/-:/'
## clushopt --pick=7
## POST titlesummary '@CentOS'

echo "Test script $0 $@";

lsb_release -si

echo Error from $(hostname) >&2

exit 0


