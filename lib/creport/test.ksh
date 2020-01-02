#!/bin/ksh

## creport test script title

## Double hash comment
# Single hash comment

## Info This is a test script (info line).
## Info Line 2 of the info.

## groupby results
## post sed -e 's/$/%/' -e 's/:/-:/'
## clushopt --pick=7
## POST titlesummary '@CentOS'

echo "Test script $0 $@";

lsb_release -si


