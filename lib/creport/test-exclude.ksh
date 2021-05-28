#!/bin/ksh

# Report text with shell expansions ....
### Test master host exclusion
### ==========================
###
### The current host $(hostname -s) is excluded. 
### 
### This report was run by $USER on $(date)

# Run options....
## clush -a -x $(hostname -f),$(hostname -s)
## Post sort

uname -n; exit

