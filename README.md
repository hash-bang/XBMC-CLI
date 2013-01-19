XBMC-CLI
========
Command line interface for a remote XBMC media center.

This script is intended to take a simple command and relay it to a XBMC instance listening to the usual HTTP command port.

Its especially useful when bound to a keyboard macro which will allow you to use shortcuts on `Machine A` to control XBMC installed on `Machine B`. Since its distrobution is a minimal Perl script it can be deployed to any compatible platform as a control method.


Usage
-----
* Enable HTTP via `Settings > Network > Services > Allow Control of XBMC via HTTP`
* Edit the xbmc script and change your host and port
* Send any command you like to the script e.g. `xbmc pause`


Command line reference
======================
```
NAME
    xbmc-cli - Simple script to control a remote XBMC instance

SYNOPSIS
            xbmc-cli pause
            xbmc-cli volup
            xbmc-cli voldown

DESCRIPTION
    A command line tool for the manipulation of remote XBMC instances.

    Original API docs - http://wiki.xbmc.org/index.php?title=HTTP_API

COMMANDS
    xbmc-cli pause
        Send the play / pause command to the remote XBMC instance. If the
        media is playing - it will pause, if its not playing - it will
        unpause.

    xbmc-cli voldown
        Turn the volume down.

    xbmc-cli volup
        Turn the volume up.

BUGS
    Quite probably.

    Please report to the author when found.

AUTHOR
    Matt Carter <m@ttcarter.com>

```
