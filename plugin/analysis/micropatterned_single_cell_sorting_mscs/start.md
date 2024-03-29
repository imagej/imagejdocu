# MSCS (Micropatterned Single Cell Sorting)

**use this plugin to sort micropatterned single cell images from
high-throughput experiments.**

# Author

Jean-Philippe Grossier jp.grossier at gmail dot com

# Features

handle 96well format images process multiple experiments/plates can sort
different micropatterns according to their size

# Description

this plugin requires at least two image channels to work: one for the
micropattern and one to count nuclei (DAPI typically). It handles up to
two extra channels for marker of interest

\- choose a directory containing either directly the images to analyse
(single analysis) or subfolders of different experiments/plates -
choosing \"96 well format\" allows to sort files according to rows (A-H)
and columns (1-12) in the corresponding tab - choosing \"sort files\"
allows to sort all channel files in a folder using regular expression -
choose the number of extra channel to analyse (in addition to the
micropattern and nucleus channel)

\- files tab: enter file extension, basic regular expression to sort
files and a name for output extra channel images

\- micropattern tab:

    enter a size (diameter in pixel) for each pattern class seperated by a coma: &quot;80, 150&quot; will look for two pattern types of 80 and 150 pixel in diameter.
    enter a tolerance for the pattern size (find pattern with size +/- size*tolerance) 
    enter a minimum area in squared pixel and maximum intensity

\- nucleus tab set the following parameters to isolate and count nuclei:

    minimum mean intensity, 
    maximum intensity,
    minimum and maximum area (squared pixel),
    minimum circularity (0&lt;circ.&lt;1) of an expected single nuclei
    choose a radius for the tophat filter (juste above the expected nucleus radius)

\- 96 screen format

    enter a regular expression to sort files according to the 96 well format
    first group () contains rows (usually LETTER)
    second group () contains columns (usually numbers)
    third group () contains fields (usually numbers)

# Installation

Download
![](/plugin/analysis/micropatterned_single_cell_sorting_mscs/mscs_0.3.jar)
file, save it to the plugin folder of ImageJ and use the \"MSCS\" in the
Plugins menu.

# Download

![](/plugin/analysis/micropatterned_single_cell_sorting_mscs/mscs_0.3.jar)

# Licence

# Changelog

13/04/19: version 0.3 (beta) change minor bugs

# Known Bugs
