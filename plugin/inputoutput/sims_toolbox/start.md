# SIMS_Toolbox

**A plugin to open and manipulate Cameca Secondary Ion Mass Spectrometer
images and acquisition data.**

## Author

Patrick Pirrotte: project maintainer (patrick_AT_image-archive_DOT_org)

## Features

-   opens SIMS mass images, compatible with 3D analysis
-   extracts acquisition data, visualisation as tree, option to export
    data as XML
-   parametrized batch conversion of SIMS images
-   anaysis module with simple ratio analysis or HSI ratio analysis
-   report function creates a montage and adds a panel with the most
    useful acquisition data
-   help function
-   image preview function (first mass image is shown)

## Description

The SIMSToolbox is a response to scant inventory of imaging tools
oriented towards Secondary Ion Mass Spectrometry (SIMS) imaging. The
current version of SIMSToolbox allows the opening and visualization of
SIMS images, the extraction of SIMS acquisition data and export to the
universal xml format. Several processing algorithms have been
implemented (simple ratio and HSI) as well as batch conversion. A
montage function yields an overview panel. 3D SIMS images are supported.
The toolbox requires the SIMSReaderImageIOPlugin, an ImageIO codec I
developed to open Cameca images using Java.

The SIMS_Toolbox and the SIMSReaderImageIOPlugin have been
poster-presented at the first ImageJ User and developer conference the
18th and 19th of May 2006 in Luxemburg.

## Installation

The SIMS_Toolbox is packaged as jar file. Tested under Sun Java Runtime
Engine JRE 1.4.2.09 and 1.5.06. Requires ImageJ \>=1.37.

-   Download the SIMS_Toolbox from here (at www.image-archive.org). BUG:
    RENAME the jar file to SIMS_Toolbox.jar
-   Download the SIMSReaderImageIOPlugin from here (at site
    www.image-archive.org)
-   Copy SIMS_Toolbox jar file to your ImageJ plugins folder
-   Copy SIMSReaderIIOPlugin.jar into your classpath (a way would be to
    copy the file to your Java Runtime Engine\'s lib/ext directory) OR
    start ImageJ with a modified classpath (java -cp
    path_to_SIMSReaderIIOPlugin -jar ij.jar)
-   Restart ImageJ. The plugin can be accessed through the ImageJ
    plugins menu. HandleExtraFileType does not support Cameca images
    yet, I first wanted to wait until the loading API of the toolbox has
    stabilized a bit.

## Download

## License

\(C\) 2006 Patrick Pirrotte. The SIMS_Toolbox is subject to Copyright
and the Attribution-NonCommercial-NoDerivs 2.5 License.To view a copy of
this licence, visit <http://creativecommons.org/licenses/by-nc-nd/2.5/>
or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford,
California 94305, USA. As to date is only provided as binary. I plan on
releasing the source code and put it under GPL v2 as soon as I\'ve
cleaned up some of my mess.

## Changelog

**v0.1 2006/05/17**

      * initial release

## Known Bugs

RENAME the jar file to SIMS_Toolbox.jar

## Contact

Contact patrick_AT_image-archive_DOT_org if you find any bugs or if
you\'d like to see a feature appear in a new release.
