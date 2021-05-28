#!/bin/ksh

### Test master host exclusion
### ==========================
###
### The current host should be excluded. 
### $(date)

## clush -a -x $(hostname -f),$(hostname -s)
## Post sort

uname -n; exit

