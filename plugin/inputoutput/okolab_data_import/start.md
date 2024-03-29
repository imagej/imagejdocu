# Okolab Data Import

Okolab Data Import is a free ImageJ plugin used to import data acquired
from Okolab incubators and print them on a Image Sequence.

## Introduction

Okolab Data Import is developed by [Okolab](http://www.oko-lab.com), an
Italian company that offers incubators for time lapse experiments. The
plugin allows to print a label on every image of an Image Sequence.
Labels concern information acquired by Okolab incubators and imported
from the [Okolab Smart
Box](http://oko-lab.com/boldLineGasControllers/smartBox.page?pId=2574):

-   Time
-   Value of a variable of interest (eg. current sample temperature) at
    the above Time

## Installation

Copy the Okolab_Data_Import.class file to the ImageJ/Plugins folder or a
folder below. Go to Help-\>Refresh Menus or (better) restart ImageJ.

## Usage

Open an image sequence (File-\>Import-\>Image sequence) and then open
the plugin (default: Plugins-\>Okolab_Data_Import). Then select a csv
data file exported from the [Okolab Smart
Box](http://oko-lab.com/boldLineGasControllers/smartBox.page?pId=2574) )
in the options dialog that appears. If you specify input from datetime
file you must also select a datetime file.

### Datetime file

The datetime file (when used) must have a number of lines that matches
the number of images in the sequence. Every line must have a date-time
value in ISO-format (yyyy-mm-dd hh:mm:ss). The first value concerns the
first image of the sequence, the second value concerns the second image
an so on\...

## Download

The latest version of Okolab Data Import can be downloaded from
[www.oko-lab.com/download.page](http://www.oko-lab.com/download.page)

## Contact Information

For inquiries regarding feature requests, bug reports, general
questions, or anything else related Okolab Data Import, please direct
emails to:

[software.support@oko-lab.com](/mailto/software.support@oko-lab.com)
