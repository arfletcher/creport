# creport
A network reporting script based on clush (clusher SSH) that uses host-based scripts (e.g. ksh, perl, python) to create reports.

This replaces a common workflows of

 cat script | clush -a /bin/ksh | post-process | ifne mailx -s 'script report' root

for different scripts and interpreters.

# Usage

First, set up clush so that it can reach all your systems of interest.
Then creport will collect infomation.

creport [-M] [<clush options>] <scriptlet> [<script args>]

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

