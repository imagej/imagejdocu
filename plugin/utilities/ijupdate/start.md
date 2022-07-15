# IJUpdate

**An ImageJ updater for stable and testing releases**

## Authors

Patrick Pirrotte: project maintainer
([*patrick@image-archive.or*g](mailto://patrick@image-archive.org))

## Description

\<code\> THE PLUGIN IS IN BETA STADIUM. It has been tested on Windows
XP, MacOS and Linux. \</code\>

IJUpdate\_ is an updater for ImageJ. It supports both stable (1.36b at
the time of writing) and testing (1.37q at the time of writing). It
connects to an ImageJ update server which contains a list of all the
ImageJ releases (currently this update server is set to
image-archive.org but another url can be specified). The update server
runs a script which sends back a list of available versions and an url
to the update files (all on the NIH ImageJ site).

## Features

These features have been implemented in the IJUpdate\_ version 1.0:

-   switching between testing and stable version
-   expert mode: ability to downgrade /upgrade freely between different
    stable versions. (useful for developers who want to test their
    plugins under different ImageJ versions.)
-   proxy settings recognized (no auth yet, only host/port combination)
-   rollback feature if upgrade/downgrade fails.

## Planned features

-   Macros and plugins are not updated yet. I\'m planning to implement
    this in a second phase. Please contact me if you have some ideas or
    want to help with the development of IJUpdate\_.

```{=html}
<!-- -->
```
-   Another interesting feature would be to keep old versions on the
    disk, to avoid downloading again and again the same version between
    series of upgrades/downgrades.
-   autocheck for new version at ImageJ startup. Code is partially
    implemented but non functional.

## Installation

IJUpdate is packaged as jar file.

-   Download it from
    [here](http://www.image-archive.org/files/IJUpdate_.jar)
-   Copy the jar file to your ImageJ plugins folder
-   Restart ImageJ. The plugin can be accessed through the ImageJ
    plugins menu

## Licence

The IJUpdate is subject to the GPL v2 which you can read
[here](http://www.gnu.org/licenses/gpl.txt). The source is found
[here](http://www.image-archive.org/files/IJUpdate_-src.jar).

## Known bugs

none so far\...

## Changelog

1.0 initial version

## Contact

Contact [Patrick](mailto://patrick@image-archive.org) if you find any
bugs or if you\'d like to see a feature appear in a new release.
