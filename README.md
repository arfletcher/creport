# creport
A network reporting script based on clush (clusher SSH) that uses host-based scripts (e.g. ksh, perl, python) to create reports.

This replaces a common workflows of

```
 cat report | clush -a /bin/ksh | post-process | ifne mailx -s report root
```

for different scripts and interpreters.

# Usage

First, set up clush so that it can reach all your systems of interest.
Then creport will collect infomation.

```
 creport [-M] [<clush options>] <scriptlet> [<script args>]
```

# Concept
Take a collection of small (shell) scriptlets and run them on a set of
UNIX/Linux systems via SSH and post process the results in an easily
understandable way.

A common workflow is to take a simple standalone script for a single
system and run it on multiple machines via SSH. Then take the result
and display it in various different ways and finally email it to
someone interested in the results.

One such method is 

```
 cat report | clush -a /bin/ksh | post-process | ifne mailx -s report root
```

for different script interpreters (eg. ksh, perl, python), with different script arguments, 
and collect the results in various ways (eg. per host, group hosts with the same output).
Having a common structure in the actual scripts keeps the reports self-contained.

# Example

```
cat <<END > /tmp/example
#!/bin/ksh
date
uname -r
END
chmod +x /tmp/example
creport -w host1,host2 /tmp/example
```

The result is

```
Example
-------

  host1: Fri Aug  9 16:36:49 EDT 2019
  host1: 3.10.0-957.21.3.el7.x86_64
  host2: Fri Aug  9 16:36:49 EDT 2019
  host2: 2.6.32-754.17.1.el6.x86_64
```

Or even something like:

```
Example
-------

  host1
  ----
    Fri Aug  9 16:42:11 EDT 2019
    2.6.32-754.17.1.el6.x86_64

  host2
  -----
    Fri Aug  9 16:42:11 EDT 2019
    3.10.0-957.21.3.el7.x86_64
```
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

