# HyperVolume_Browser

**Display 4D datasets (or hypervolumes) in a modified window.**

## Authors

Patrick Pirrotte: project maintainer
([*patrick@image-archive.or*g](mailto://patrick@image-archive.org))
Jerome Mutterer: testing, documentation, debugging
([*jerome.mutterer@ibmp-ulp.u-strasbg.fr*](mailto://jerome.mutterer@ibmp-ulp.u-strasbg.fr))

Jeff Brandenburg, Duke Center for In-Vivo Microscopy (jeffb at
orion.duhs.duke.edu)

## Description

This plugin displays 4D datasets (or hypervolumes) in a modified image
window using one slider for the 3rd dimension and another one for the
4th dimension. If it\'s called when the active windows is a stack
(supposed to represent a hypervolume), it will ask the user the 3rd
dimension\'s depth, and labels for the 3rd and 4th dimension, and then
create the new hypervolume window. Labels are only used to display the
3rd and 4th D in the image\'s textual info bar, next to the absolute
slice number of the stack. Also it can be called by some other routine,
by just passing over these parameters.

## Features

This little plugin is quite successful. Many other stack visualisation
plugins share their roots in this plugin.

-   it does what it should do
-   can be called by macros
-   dialog to parametrize the 4D stack

The HyperVolume_Browser is very useful if installed along the
[LSMToolbox](/plugin/inputoutput/lsmtoolbox/start) as it extends the
ability of the toolbox to browse lsm hypervolumes (the dimension being
time, depth, or wavelength) in 4D confocal stacks.

## Installation

The HyperVolume_Browser is packaged as jar file.

-   Download it from
    [here](http://rsb.info.nih.gov/ij/plugins/download/HyperVolume_Browser.java)(at
    the ImageJ website)
-   Copy the file to your ImageJ plugins folder or subfolder and compile
    and run using *Plugins/Compile and Run*
-   Restart ImageJ. The plugin can be accessed through the ImageJ
    plugins menu

## Licence

The LSM_Toolbox is subject to the GPL v2 which you can read
[here](http://www.gnu.org/licenses/gpl.txt). The Source is included in
the installation jar.

## Known bugs

none so far\...

## Changelog

**v1.1 2005/08/11**

-   Added \"Make new copy for browsing\" option; works with [Virtual
    Stack
    Opener](http://rsb.info.nih.gov/ij/plugins/virtual-opener.html)
    plugin; uses Image\>Properties settings; fixed macro argument
    processing

**v1.0 2003/03/28**

-   initial release

## Contact

Contact [Patrick](mailto://patrick@image-archive.org) if you find any
bugs or if you\'d like to see a feature appear in a new release.
