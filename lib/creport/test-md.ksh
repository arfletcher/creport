#!/bin/ksh

### creport Test Script
### ===================
###
### Test ksh script.
###
### Comments are markdown, requires pandoc to be install.
### Any description can be put here.
### Info ends after this ### block.

# creport directives
## groupby results
## post sed -e 's/$/%/' -e 's/:/-:/'
## clushopt --pick=7
## POST titlesummary '@CentOS'

# Single hash comment
## Double hash comment

### This is a test script but this is not info text
### Nor is this.

# Results
echo "Test script $0 $@";
lsb_release -si
echo Error from $(hostname) >&2

exit 0


