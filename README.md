XBMC-CLI
========
Command line interface for a remote XBMC media center.

This script is intended to take a simple command and relay it to a XBMC instance listening to the usual HTTP command port.


Usage
-----
* Enable HTTP via `Settings > Network > Services > Allow Control of XBMC via HTTP`
* Edit the xbmc script and change your host and port
* Send any command you like to the script e.g. `xbmc pause`


Command line reference
======================
```
NAME
    xbmc - Simple script to control a remote XBMC instance

SYNOPSIS
            xbmc pause
            xbmc volup
            xbmc voldown

DESCRIPTION
    A command line tool for the manipulation of remote XBMC instances.

    Original API docs - http://wiki.xbmc.org/index.php?title=HTTP_API

EXAMPLES
    xbmc pause
        Send the play / pause command to the remote XBMC instance. If the
        media is playing - it will pause, if its not playing - it will
        unpause.

    xbmc voldown
        Turn the volume down.

    xbmc volup
        Turn the volume up.

BUGS
    Quite probably.

    Please report to the author when found.

AUTHOR
    Matt Carter <m@ttcarter.com>

POD ERRORS
    Hey! The above document had some coding errors, which are explained
    below:

    Around line 35:
        You forgot a '=back' before '=head1'

```
