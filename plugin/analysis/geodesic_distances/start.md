# Chamfer distances and Geodesic diameters

## Introduction

A plugin for computing geodesic distances within binary images, and to
compute geodesic diameters (or geodesic lengths) of labeled particles.
Both functions uses chamfer distances (approximations of euclidean
distance around pixels).

## Author

David Legland email : david dot legland (at) grignon dot inra dot fr

## Features

The plugin includes two functions, available in menu
\"Plugins\>Geodesics\":

-   **Geodesic Diameter**: this function computes the geodesic diameter
    of particles in a label image
-   **Chamfer Distance**: this function propagates geodesic distances
    from a marker image within a mask image.

## Description

### Geodesic Length

Geodesic Diameter of a particle is the length of the longest geodesic
path within a particle. A geodesic path is the shortest path (series of
neighbor pixels within particle) that connects two points in the
particle. The geodesic diameter is a good alternative to other shape
descriptors such as perimeter.

The functions use a label image as input. It computes for each
particule/label the following parameters:

-   **Geodesic Diam.**: as explained above
-   **radius**: radius of the greatest enclosed circle
-   **Geod elong**: ratio of the geodesic length over the inscribed
    circle radius
-   **xi, yi**: center of the greatest enclosed circle (not necessarily
    unique)
-   **x1, y1, x2, y2**: coordinates of the two geodesic extremities
    detected by the algorithm

Note that current implementation computes only an approximation of the
real geodesic diameter. For most particles, it seems to give the same
result as the real chamfer geodesic diameter (computed from Matlab).

If the checkbox \"Overlay results\" is checked, a line joining geodesic
extremities is shown, as well as the inscribed circle.

![](/plugin/analysis/geodesic_distances/blobs-overlay.png){.align-center
width="256"}

### Chamfer Distance

Chamfer distances are used by used for computing geodesic diameters. The
principle is to propagate chamfer distances from a binary image (the
marker), constrained to another binary image (the mask). Result is
something like this:

![](/plugin/analysis/geodesic_distances/blobs-dist-colored.png){.align-center
width="256"}

## Installation

Copy the file \"ij_Geodesics.jar\" into the \"plugins\" subfolder of
ImageJ. Under Windows, this is typically \"C:\\Program
Files\\ImageJ\\plugins\". You can then restart ImageJ.

## Download

First you need to download the following files:

-   [ij_Geodesics.jar](http://sourceforge.net/projects/ijtools/files/ijTools/ijGeodesics/ijGeodesics-2014.02.21/ij_Geodesics.jar/download).

Then copy the jar file into the \"plugins\" folder of ImageJ, and
restart ImageJ. A new \"Geodesics\" menu is available in the plugin
menu.

You can also download one of the following files:

-   [ijGeodesicsManuel.pdf](http://sourceforge.net/projects/ijtools/files/ijTools/ijGeodesics/ijGeodesics-2014.02.21/ijGeodesicsManuel.pdf/download)
    a short manual (for the moment only in french\...)
-   [ijGeodesics.zip](http://sourceforge.net/projects/ijtools/files/ijTools/ijGeodesics/ijGeodesics-2014.02.21/ijGeodesics-2014.02.21.zip/download)
    the archive that contains the jar, the manuel, and some test images.

## License

This plugin follows the terms of the LGPL licence.

If you find the plugin usefull, please make a citation to the paper it
was developed for:

-   **Legland, D. & Beaugrand, J. (2013)** Automated clustering of
    lignocellulosic fibres based on morphometric features and using
    clustering of variables. *Industrial Crops and Products*, **45**,
    253 - 261 ([url)](http://dx.doi.org/10.1016/j.indcrop.2012.12.021)

## Changelog

\* 2014.02.21 add support for chessknight distances, and for computation
of tortuosity maps

\* 2011.07.25 First release on this wiki. It includes \"plugins.config\"
file.

## Known bugs

None yet\...
