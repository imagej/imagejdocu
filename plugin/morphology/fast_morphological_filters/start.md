# Fast Morphology

**A collection of morphological filters for grayscale images (8-bits)
optimised for speed.**

## Description

This plugin provides facilities for morphological filtering of grayscale
images. The plugin supports basic operations such as dilation, erosion,
opening, and closing, as well as combination of them such as top-hat,
morphological gradient or Laplacian.

Some utilities such as chamfer distance maps or image border padding are
also included for convenience.

Important notice: this package is now integrated into the
\"[morphological
segmentation](/plugin/segmentation/morphological_segmentation/start)\"
plugin.

## Morphological Filters

The main function of this plugin is \"Morphological Filters\". It
implements fast versions of erosion, dilation, opening and closing with
various structuring elements: square, octagon, lines (horizontal,
vertical or diagonal). The size of structuring elements is given in
diameter (it is possible to use squares with even side length).

![Original Blob image (inverting
LUT)](/plugin/morphology/fast_morphological_filters/blobs.png){width="150"}

![Erosion of Blob image (inverting
LUT)](/plugin/morphology/fast_morphological_filters/blobs-erosion.png){width="150"}
![Dilation of Blob image (inverting
LUT)](/plugin/morphology/fast_morphological_filters/blobs-dilation.png){width="150"}
![Opening of Blob image (inverting
LUT)](/plugin/morphology/fast_morphological_filters/blobs-opening.png){width="150"}
![Closing of Blob image (inverting
LUT)](/plugin/morphology/fast_morphological_filters/blobs-closing.png){width="150"}

![Gradient of Blob image (inverting
LUT)](/plugin/morphology/fast_morphological_filters/blobs-gradient.png){width="150"}
![Laplacian of Blob image (inverting
LUT)](/plugin/morphology/fast_morphological_filters/blobs-laplacian.png){width="150"}

The implementation makes use of structuring element decomposition, and
of local histograms. Computation times below the second are obtained for
operations on 2000x3000 images using 100x100 square.

## Geodesic reconstruction

Geodesic reconstruction is a powerful algorithm that can be used to
reconstruct complex particles from a marker image. An example of
reconstruction by dilation is shown below. Several grains are manually
selected, and a binary image of markers is created. This marker image is
used as input of geodesic reconstruction by dilation, using the original
image as mask. The particles identified by the markers are
reconstructed, while the other one are removed.

![A grain image with a selection of
markers](/plugin/morphology/fast_morphological_filters/grains-markers-overlay.png){width="256"}
![Binary image obtained by transforming markers into
image](/plugin/morphology/fast_morphological_filters/grains-binary-markers.png){width="256"}
![Grayscale geodesic reconstruction by dilation of the selected
grains](/plugin/morphology/fast_morphological_filters/grains-geodrec-bydilation.png){width="256"}

Geodesic reconstruction algorithms can also be used for removing
particules touching image borders, or filling holes. Corresponding
plugins are also included into the package for convenience.

## Minima and maxima detection

Starting from version 1.4, the plugin provides detection of regional
minima and maxima, as well as detection of extended minima and maxima.
Such filters are particularly useful for helping a segmentation process.
A function for imposing minima or maxima on a grayscale image is also
provided.

The images below show an example of regional maxima detection (middle
image) on a filtered grain image, and the result of extended minima
detection with a dynamic of 10 (right).

![Filtered image of
grains](/plugin/morphology/fast_morphological_filters/grains-filtered.png){width="256"}
![Result of regional maxima superimposed on original
image](/plugin/morphology/fast_morphological_filters/grains-rmax-ovr.png){width="256"}
![Result of extended maxima superimposed on original
image](/plugin/morphology/fast_morphological_filters/grains-emax10-ovr.png){width="256"}

Regional minima and maxima use a fast algorithm based on flood-filling
like algorithm. Extended minima and maxima make use of geodesic
reconstruction by dilation or erosion. The latter algorithm is
implemented using iteration of forward-bacward updates until
idempotence.

## Utilities

### Extend Image Borders

In order to manage the problem of image borders, an \"Extend Image
Border\" plugin is provided. It creates a new image bigger than the
original by mirroring, replicating, or repeating the input image.

![Use Mirror
borders](/plugin/morphology/fast_morphological_filters/blobs-mirror.png){width="200"}
![Use Periodic
borders](/plugin/morphology/fast_morphological_filters/blobs-periodic.png){width="200"}
![Use Replicated
borders](/plugin/morphology/fast_morphological_filters/blobs-replicate.png){width="200"}
![Use Constant Value
Border](/plugin/morphology/fast_morphological_filters/blobs-white.png){width="200"}

### Distance Map

A \"Chamfer Distance Map\", similar to distance map, is also provided.
It provides more choices in the distance approximations, and makes it
possible to choose the output type (8-bits, 16-bits, 32-bits).

![Distance map computed on a
leaf](/plugin/morphology/fast_morphological_filters/leaf-dist-fire.png){width="400"}

## Instructions

The plugin can be obtained from here:

[Fast_Morphology.jar](http://sourceforge.net/projects/ijtools/files/ijTools/ijMorphology/ijMorphology-1.5/Fast_Morphology.jar/download)

Simply copy the file into the plugin directory, and click on menu
\"Help-\>Refresh Plugins\". All functions should be available in menu
\"Plugins-\>Fast Morphology\"

## See Also

-   [morphological
    segmentation](/plugin/segmentation/morphological_segmentation/start)
    plugin will contain future versions of this plugin.
-   [Morphological Operators for
    ImageJ](/plugin/morphology/morphological_operators_for_imagej/start)
    from Gabriel Landini
-   [Non binary Morphological Operators for
    ImageJ](/plugin/morphology/graymorphology/start) from Dimiter
    Prodanov
-   [Fast Filters](/plugin/filter/fast_filters/start) from Michael
    Schmid
-   [3D Mathematical
    Morphology](/plugin/morphology/3d_mathematical_morphology_/start)
    from Thomas Boudier

## History

-   2014.07.16 Update to version 1.5 added support for 3D morphological
    filters and regions minima/maxima, added support for morphological
    filtering of floating point images
-   2013-10-16 Update to version 1.4 add geodesic reconstruction by
    erosion, regional minima/maxima, extended minima/maxima, imposition
    of minima/maxima. Most plugins are now based on PlugInFilter (making
    it possible to have preview). Also fix some bugs.
-   2013-06-10 Update to version 1.3 (add geodesic reconstruction
    plugin, add chamfer distance maps with 5x5 neighborhood,
    morphological filters now keep spatial calibration of images, update
    package arborescence)
-   2012-11-07 Update to version 1.2 (inner and outer gradients,
    morphological laplacian, fix bug in Shape list, use size in radius)
-   2012-08-29 first release, by David Legland
