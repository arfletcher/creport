# creport
A network reporting script based on clush (clusher SSH) that uses host-based scripts (e.g. ksh, perl, python) to create reports.

# Concept
Take a collection of small (shell) scriptlets and run them on a set of UNIX/Linux systems via Linux and post process the results in a easily understandable way. 

# Test Scriptlets

There are a few test scriptlets, one each for various languages. The
files extensions are not needed, the language is deduced from the #!
line of the script.

* lib/creport/test.ksh
* lib/creport/test.pl
* lib/creport/test.py

# Post-processing Directives

Each script can contain some post-processing directives, each starts with ##

* ## clushopt <extra-clush-options>
* ## groupby results
* ## errors show|hide

