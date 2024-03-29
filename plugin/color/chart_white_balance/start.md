# Chart_White_Balance

## Introduction

Often one sees people compute CIELab and other colorimetric values from
RGB images, which is actually not correct as RGB is just a generic term.
RGB-values are undefined and thus rather meaningless when trying to
convey precise colorimetric information. This may not be important in
many fields, but for e.g. medical photography it is crucial as images
maybe subject to postprocessing. I have developped color calibration
software to do this, but I cannot currently distribute it. However, a
(much) simpler version can be found in the macro presented here.

## Author

Yves Vander Haeghen <http://www.c4real.biz>

## Features

This macro will compensate for lighting (white balance) and exposure
variations, and will move your image much closer to the sRGB standard
color space (with a 6500K white point).

## Description

This macro will scale the color channels in an image based on the sRGB
values of the black and white patch of a color chart in the image using
a multipoint Lookup Table (LUT). It is not a full color calibration, but
it should bring the image closer to the sRGB color space. It will also
compute the resolution of the pixels around and near the chart. The
supported charts are the MacBeth Color Checker Chart (A4 and small), and
the QP201 chart.

![](/plugin/color/chart_white_balance/qpcard_201small.jpg)

*QP Card 201 color chart.*

![](/plugin/color/chart_white_balance/mbccctiny.png)

*MacBeth Color Checker Chart.*

![](/plugin/color/chart_white_balance/calibrationadjustmentresult.jpg)

*Set of images taken under different sources of light (Canon G2 full
auto mode).\
Top row: originals, middle: result with full color calibration.\
Bottom: result with ImageJ macro (v1.0).*

![](/plugin/color/chart_white_balance/ImageJMacroV1-2.jpg)

*Results with the much improved ImageJ macro v1.2. Note that the colors
with an overexposed channel (white and red, saturated in the red
channel) can never be recovered fully. This can easily be seen in the
red toy screw in the 3 rightmost images (the screw should look like in
the leftmost image)*

New in version 2.0: Color Classification.

This is based on static classification map. Basically this is a binary
file which contains the classes as bytes for each of the 255x255x255 RGB
values. Order in the file is RGB, so we have classes for (0,0,0),
(0,0,1), (0,0,2), \...(255,255,255). Knock yourselves out and try to
build your own maps using your favorite classification of clustering
algorithms!

![](/plugin/color/chart_white_balance/rybclassificationcalibrated.jpg)

## Installation

Put the macro in the Macro folder of ImageJ

For the java plugin version, extract the contents of the zip file in the
imageJ plugin folder. It contains an example of a color classification
map (ulcus.cmp) that can be used for the red-yellow-black analysis of
skin lesions.

## Usage

To use the macro without using a predefined or saved LUT, first draw a
line from the center of the black to the white patch of the color chart
using the line tool, and then activate the plugin.

![](/plugin/color/chart_white_balance/screenshotbeforemacro.png).

After this the macro should display the options box:

![](/plugin/color/chart_white_balance/screenshotoptions.png)

Select the appropriate chart and proceed. The LUT\'s that are generated
can also be viewed and saved for later use. To reuse a saved LUT, simply
activate the plugin **without** drawing a line. Some info about the
computations are displayed in the results dialog:

![](/plugin/color/chart_white_balance/screenshotresults.png)

And the resulting image is:

![](/plugin/color/chart_white_balance/screenshotaftermacro.png)

## Download

![](/plugin/color/chart_white_balance/chart_white_balance.zip)

![](/plugin/color/chart_white_balance/chart_white_balancev1-2.zip)

![CIPF (Contains Chart White balance
v2.0)](/plugin/color/chart_white_balance/cipf.zip)

## License

Free to use, provided credits remain.

## Changelog

     - v 1.0, 29 dec. 2008.
     - v 1.1, 5 january 2009 was never uploaded, but included better LUTs
    - v 1.2, 11 january 2009 (4-5 times more code!):
    * Better LUTs, especially when black or white is over or underexposed
    * Warnings for over or underexposure
    * Ability to save the LUTs and reuse them later. Reuse is triggered by running macro on image without any selection.
    * Chart marking must now go from Black to White instead of the other way around. 

\- v 2.0, 13th feb. 2009 plugin is now no longer a macro, but a real
java plugin:

-   The speed is much better!
-   Appears as Plugin-CIPF-Chart White Balance (CIPF stands for
    \'Colorimetric Image Processing Framework\' of which this a small
    part)
-   Bundled with a color classification plugin that can load
    classification maps created beforehand

## Known Bugs

5 jan. 2009: LUTs sometimes very bizar when image extreme under- or
over-exposure. Will be corrected in next version.
