# LSMToolbox

**The LSM Toolbox, a toolbox for reading and manipulating Zeiss LSM
confocal images.**

## Authors

-   Patrick Pirrotte: project maintainer (patrick@image-archive.org)
-   Jerome Mutterer: testing, documentation, debugging
    (jerome.mutterer@ibmp-ulp.u-strasbg.fr)

## Description

The LSM_Toolbox is a project aiming at the integration of common useful
functions around the Zeiss lsm file format, that should enhance
usability of confocal lsm files kept in their native format, thus
preserving all available metadata. It uses different third party plugins
like HyperVolume_Browser or Image_5D. Further documentation can be found
in this slightly outdated manual.

## Features

These features have been implemented in the LSM_Toolbox version 4.0e:

-   XML export support.
-   loads metadata on demand
-   added Drag and Drop support to the ControlPanel. Simply drag and
    drop an lsm image from your filemanager onto the ControlPanel to
    open it.
-   macro aware, Syntax: run(\"Show LSM
    Toolbox\",\"file=path_to_lsm_file\") to open the file (control panel
    is not shown)
-   plugin aware, Syntax:
    runPlugIn(\"LSM_Toolbox\",\"file=path_to_lsm_file\") to open the
    file (control panel is not shown)
-   new batch processing dialog
-   open compressed images (YES it finally works!!!)
-   compatible with the latest release of the Zeiss LSM file format
    (July 2006, version 4)
-   compatible with 8, 12 and 16 bit LSM images
-   image preview window when opening, shows first image of first image
    directory from the file
-   lambda t and z-stamping
-   open stacks with HyperVolume_Browser OR Image5D if those plugins are
    installed
-   binding to LSM_Merge or LSM_Fusion if those plugins are installed
-   recoloring with the Lut_Panel plugin, if the plugin is installed
-   detailed view and extraction of acquisition data
-   a help page
-   faster than LSM_Reader version 3.2. Subjectively faster than the
    native Zeiss LSM Browser ;-)
-   \... many many more\...

As stated above the LSM_Reader continues to exist, and is directly
forked from the LSM_Toolbox source code. It is squeezed to fit into the
ImageJ main package. LSM_Reader does not contain metadata extraction or
GUI which are features found in the toolbox.

## Installation

The LSM_Toolbox is packaged as jar file.

Since v4.0e, the plugin requires LSM_Reader v4.0e or higher

-   Unzip this file :
    ![lsmplugins.zip](/plugin/inputoutput/lsmtoolbox/lsmplugins.zip)
-   Copy the jar files to your ImageJ plugins folder
-   Restart ImageJ. The plugin can be accessed through the ImageJ
    plugins menu

Recommended (but optional) companion plugins:

-   HyperVolumeBrowser, version \>=1.1
-   Image5D, version \>=1.16

## Licence

\(C\) 2003-2009 Patrick Pirrotte, Jérôme Mutterer. LSM_Toolbox is
subjected to the GPL v2 which you can read here.

The source code of LSM_Toolbox and LSM_Reader are available on
[GitHub](https://github.com/fiji?tab=repositories).

## Known bugs

none so far\...

## Changelog

**4.0f (18/6/2009)**

      * Various cosmetic bugfixes
      * Added scantype 10 support
      * Fixed 16-bit compressed lsm bug
      * Added a button to load event window.
      * Fixed XML export via macro.

        Use as follows:
        run(&quot;Show LSMToolbox&quot;,&quot;ext&quot;);
        //to open an image:
        //Ext.lsmOpen(&quot;d:/a.lsm&quot;);
        file= &quot;d:/a.lsm&quot;
        //to print out xml:
        xml = Ext.lsmXML(file);
        print(xml);         

      * Export stamps via macro (e.g. Lambdastamps (Ext.getLStamps), Timestamps (Ext.getTStamps), Z-Stamps (Ext.getZStamps)

        Use as follows:
        run(&quot;Show LSMToolbox&quot;,&quot;ext&quot;);
        file= &quot;d:/a.lsm&quot;
        stamps = Ext.getTStamps(file);
        print(stamps);

      * Export events via macro.

        Use as follows:
        run(&quot;Show LSMToolbox&quot;,&quot;ext&quot;);
        file= &quot;d:/a.lsm&quot;
        events = Ext.getEvents(file);
        print(events); 

**4.0e (2/11/2008)**

-   Major changes in LSMToolbox and LSMReader. LSMToolbox requires
    LSMReader 4.0e.
-   LSMReader opens the images, Metadata is read \"on demand\" by the
    LSMToolbox, resulting in considerable time gain during image loading
-   added an xml export function of LSM image metadata
-   included Magic Montage 1.4
-   Java 1.5 required (raised from 1.4.2)

**4.0d (23/04/2008)**

-   minor bugfixes
-   a bug caused a race condition resulting in macros behaving
    erratically has been fixed
-   image preview: the thumbnail is shown in grayscale
-   image preview: a slider helps browsing through thumbnail stacks
-   Added Magic_Montage, a bunch of useful macros by Jérôme Mutterer.
    They are installed automagically into the ImageJ toolbar via the
    Toolbox user interface
-   8bit and 12bit compressed and uncompressed images work batch
    conversion interface: added a reset button to empty the file list

**4.0c (07/03/2008)**

-    minor bugfixes
-    fixed the binding to HyperVolumeBrowser
-    added support for linescan (scantype 2)
-    cleaned up the way some internal strings are read (thanks to
    Peter H. Li)

**4.0b (16/10/2006)**

-   added Drag and Drop support to the ControlPanel. Simply drag and
    drop an lsm image from your filemanager onto the ControlPanel to
    open it.
-   fixed an Image5D bug, preventing the correct conversion of stacks
    into image5d
-   macro aware, Syntax: run(\"Show LSM
    Toolbox\",\"file=path_to_lsm_file\") to open the file (control panel
    is not shown)
-   plugin aware, Syntax:
    runPlugIn(\"LSM_Toolbox\",\"file=path_to_lsm_file\") to open the
    file (control panel is not shown)
-   newer versions of HandleExtraFileType (bundled in stable ImageJ
    1.37) can discern if LSM_Toolbox is installed alongside LSM_Reader.
    If the toolbox is found it will used instead of the reader. an
    IJ.open(path_to_file) is then the preferred way to open an image.
-   corrected the image stamping. Stamping of files is possible via an
    image selection dialog
-   new batch processing dialog

**4.0** version bump to match the file format version

Changelog of previous versions belong to the LSM_Reader plugin.

## Code snippets

      *[[load_zeiss|Code snippet to load an image from another plugin during ImageJ runtime]], using class reflection (e.g. no need to compile the plugin against LSM_Toolbox source code).

## Contact

Contact [Patrick](mailto://patrick@image-archive.org) or
[Jerome](mailto://jerome.mutterer@ibmp-ulp.u-strasbg.fr) if you find any
bugs or if you\'d like to see a feature appear in a new release. It\'s
easier for us to debug if you send us one of your images which cause the
problem.
