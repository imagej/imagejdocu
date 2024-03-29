## 3D Mathematical Morphology

Various algorithms for 3D Mathematical Morphology.

## Author

Thomas Boudier

## Description

3D mathematical **operations** (erosion, dilatation, \...) are available
in [3D filters](/plugin/filter/3d_filters/start) using minimum and
maximum filters.

A 3D **Fill Holes** is available, works the same way as in 2D but will
not fill holes if it is not closed in the Z dimension.

A 3D **Euclidean Distance Map** is available that takes into account the
calibration of the image stack. A 3D normalized dsitance map (called
Eroded Volume Fraction, or **EVF**) is also available.

In the case of labelled objects (as count masks) a **Binary Close
Labels** is available, that permits to performs closing on individual
objects, hence avoiding objects to touch during dilatation operation.

## Download

For details go to the [3D ImageJ
Suite](/plugin/stacks/3d_ij_suite/start).

## Citation

When using the *3D Mathematical Morphology* plugins for publication,
please refer to :

J. Ollion, J. Cochennec, F. Loll, C. Escudé, T. Boudier. (**2013**)
TANGO: A Generic Tool for High-throughput 3D Image Analysis for Studying
Nuclear Organization. *Bioinformatics* 2013 Jul 15;29(14):1840-1.
[doi](http://dx.doi.org/10.1093/bioinformatics/btt276)

## License

GPL distribution (see [license](http://www.cecill.info/index.en.html)).
Sources for plugins are available freely. Sources for core are available
on request.

## Changelog

\* 30/03/2016 V3.74: bug fixed in EDT
