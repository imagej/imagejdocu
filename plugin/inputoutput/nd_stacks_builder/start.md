# Metamorph nd & ROI files importer (nd stack builder)

## Author

Fabrice P. Cordelières, Bordeaux Imaging Center (France).
Fabrice.Cordelieres at gmail dot com

## Features

This plugins adds two new functionalities to ImageJ:

1.  it deals with sequences of images generated with the Metamorph
    software, allowing, for instance, to import a series of images from
    a multi-positionning experiment into one stack per position, or to
    make projections of series of stacks from a 3D+time experiment.
2.  it adds the ability to import ROIs generated with the Metamorph
    software to ImageJ\'s ROI Manager.

## Description

Coming soon\...

## Installation

Simply download
![](/plugin/inputoutput/nd_stacks_builder/mm_nd_and_roi_pack.jar) to the
Plugins folder of ImageJ, use the "Help/Update Menus" function to
refresh the ImageJ\'s menus. Two new entries are generated under the
File/import menu: \"Metamorph nd file (stack builder)\" and \"Metamorph
ROI\".

## Download

![The plugin is available from
here](/plugin/inputoutput/nd_stacks_builder/mm_nd_and_roi_pack.jar)

## License

This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 3 of the License, or (at your
option) any later version. This program is distributed in the hope that
it will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details. You should have received a
copy of the GNU General Public License along with this program. If not,
see <http://www.gnu.org/licenses/>.

Copyright (C) 2005 Fabrice P. Cordelières

## Changelog

2005/06/15: First version

2008/05/27: Plugin has been totally rewritten to handle new nd file
formats and to add the ROI import function.

2010/04/02: Solved a problem with newer versions of Metamorph where a
padding is done on the timepoint number, within the name of the file.
The plugin now handles both padded and non padded filenames.
