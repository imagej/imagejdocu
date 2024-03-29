# 3D object counter

**This plugin allows counting objects in 3D, and getting some
measurements about each object found. **

## Author

Fabrice P. Cordelières, Bordeaux Imaging Center (France).
Fabrice.Cordelieres at gmail dot com

## Features

This plugin:

1.  counts the number of 3D objects in a stack.
2.  quantifies for each found object the following parameters:
    -   Integrated density;
    -   Mean of the gray values;
    -   Standard deviation of the gray values;
    -   Minimum gray value;
    -   Maximum gray value;
    -   Median of the gray values;
    -   Mean distance from the geometrical centre of the object to
        surface;
    -   Standard deviation of the distance to surface;
    -   Median distance to surface;
    -   Centroid;
    -   Centre of mass;
    -   Bounding box.
3.  generates results representations such as:
    -   Objects\' map;
    -   Surface voxels\' map;
    -   Centroids\' map;
    -   Centres of masses\' map.

As ImageJ\'s \"Analyze Particles\" function, 3D-OC also has a \"redirect
to\" option, allowing one image to be taken as a mask to quantify
intensity related parameters on a second image. ***![To find out more,
download the plugin\'s manual from
here.](/plugin/analysis/3d_object_counter/3d-oc.pdf)***

## Description

This plugin is composed of two parts:

-   The \"3D-OC Set Measurements\" part allows to define the parameters
    to calculate and fix some options.
-   The \"3D-OC Object Counter\" part to run the analysis.

![](/plugin/analysis/3d_object_counter/3doc-sm.jpg)![](/plugin/analysis/3d_object_counter/3doc-redir.jpg)

***![More information in the plugin\'s manual downloadable from
here.](/plugin/analysis/3d_object_counter/3d-oc.pdf)***

## References/Citation

When using the "3D Object Counter" plugin for publication, please refer
to [S. Bolte & F. P. Cordelières, A guided tour into subcellular
colocalization analysis in light microscopy, Journal of Microscopy,
Volume 224, Issue 3:
213-232](http://www.ncbi.nlm.nih.gov/pubmed/17210054), to this webpage
and of course to ImageJ, as explained in the [FAQ section, on ImageJ's
website](http://rsbweb.nih.gov/ij/docs/faqs.html). A copy of your paper
being sent to my e-mail address would also be greatly appreciated !

## Installation

Simply download ![](/plugin/analysis/3d_object_counter/3d-oc_.jar) to
the Plugins folder of ImageJ, use the \"Help/Update Menus\" function to
refresh the plugins\' menu and use the "3D Object Counter/Set
Measurements" and \""3D Object Counter/3D object counter\" commands in
the Plugins menu.

## Downloads

![The plugin is available from
here](/plugin/analysis/3d_object_counter/3d-oc_.jar)

![The plugin\'s manual is available from
here.](/plugin/analysis/3d_object_counter/3d-oc.pdf)

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
