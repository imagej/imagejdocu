# IJProxy

**IJProxy sets the http proxy settings of the Java Virtual Machine for
ImageJ**

## Authors

-   Patrick Pirrotte: project maintainer
    ([patrick@image-archive.or//g](mailto://patrick@image-archive.org))

## Description

**Since ImageJ v1.40, the proxy settings can be provided through the
ImageJ interface. Tthus this plugin is obsolete and is only left here
for teaching/historical reasons.**

IJProxy modifies the proxy settings of the Java Virtual Machine.
Settings are saved in key/value paris in the ImageJ preferences file
(IJ_Prefs.txt). This allows machines which are behind a proxy and cannot
directly access the outside world from within ImageJ to do so
nevertheless (a typical example is opening the example images).

ImageJ allows to run macros/plugins at startup via StartUpMacros.txt. If
you want to set the proxy automatically at startup add

*macro \"AutoRun\" {run(\"Set proxy\");}*

to StartupMacros.txt, or edit the autorun macro accordingly.

## Features

These features have been implemented in IJProxy version 1.0:

-   configurable settings through a GUI

## Installation

The IJProxy\_ is packaged as jar file.

-   Download it from
    [here](http://www.image-archive.org/uploads/media/IJProxy_.jar)
    (project hosted at www.image-archive.org)\
    \* Copy the jar file to your ImageJ plugins folder
-   Restart ImageJ. The plugin can be accessed through the ImageJ
    plugins menu
-   To set the proxy on autostart do add

*macro \"AutoRun\" {run(\"Set proxy\");}*

to StartupMacros.txt, or edit the autorun macro accordingly.

## Licence

\(C\) 2003-2006 Patrick Pirrotte\
\
IJProxy is subjected to the GPL v2 which you can read
[here](http://www.gnu.org/licenses/gpl.txt). The source is in the jar
file.

## Known bugs

none so far\...

## Changelog

1.0 initial release

## Contact

Contact [Patrick](mailto://patrick@image-archive.org) if you find any
bugs or if you\'d like to see a feature appear in a new release.
