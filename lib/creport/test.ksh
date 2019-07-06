#!/bin/ksh

# creport test script
## Info This is a test script
## groupby results
## post sed -e 's/$/%/' -e 's/:/-:/'
## clushopt --pick=7
## POST titlesummary '@CentOS'

echo "Test script $0 $@";

lsb_release -si


