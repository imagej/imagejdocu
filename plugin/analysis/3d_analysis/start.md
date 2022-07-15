## 3D Analysis

Various plugins for analysis of 3D images and objects.

## Author

Thomas Boudier

## Description

A plugin for 3D **Radial Distribution** of voxel values inside a sphere
is available, select first a position with the point tool. If you
compute the EVF (Eroded Volume Fraction = normalised Euclidean Distance
Transform) you can use **EVF Distribution** to compute information in
growing layers of equal volumes.

You can compute **co-localisation** between labelled objects in two
images using the
[MultiColoc](/plugin/analysis/details_about_multi-colocalisation_analysis/start)
plugin.

3D **segmentation** and labelling algorithms are available in [3D
Segmentation](/plugin/segmentation/3d_spots_segmentation/start).

A plugin to **remove objects on borders** of the image (X, Y and Z) is
available, and could be used before analysis.

The following plugins work on 3D images of labelled objects (the value
of voxel is the numbering of object as in count masks) :

-   3D **Geometrical** measurements (volume, surface, \...) for each
    labelled object.
-   3D **Centroid**, to compute centroids of labelled objects.
-   3D **Intensity** measurements (mean, integrated density, \...) in a
    opened image for each labelled object.
-   3D **Shape** measurements (compactness, elongation, \...) for each
    labelled object.
-   3D **Mesh** Measurements after triangulation (see [3D
    Viewer](http://3dviewer.neurofly.de/) for surface mesh computation).
-   3D fitting by an **ellipsoid** and main direction computation
    ([details here](/tutorial/plugins/3d_ellipsoid)).
-   3D **convex hull** (see
    <http://rsbweb.nih.gov/ij/plugins/3d-convex-hull/index.html>).
-   3D Radial Distance Area Ratio
    ([RDAR](/plugin/analysis/3d_radial_distance_area_ratio_rdar_/))
-   3D **Density**, to compute density of dots, based on closest
    distance analysis ([details
    here](/plugin/analysis/density_2d_3d/start)).

## Download

For details go to the [3D ImageJ
Suite](/plugin/stacks/3d_ij_suite/start).

## Citation

When using the *3D Analysis* plugins for publication, please refer to :

J. Ollion, J. Cochennec, F. Loll, C. Escudé, T. Boudier. (**2013**)
TANGO: A Generic Tool for High-throughput 3D Image Analysis for Studying
Nuclear Organization. *Bioinformatics* 2013 Jul 15;29(14):1840-1.
[doi](http://dx.doi.org/10.1093/bioinformatics/btt276)

## License

GPL distribution (see [license](http://www.cecill.info/index.en.html)).
Sources for plugins are available freely. Sources for core are available
on request.
