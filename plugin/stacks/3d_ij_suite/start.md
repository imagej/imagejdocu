## 3D ImageJ Suite

This \"suite\" provides plugins to enhance 3D capabilities of ImageJ.

## Author

Thomas Boudier ![email](/plugin/stacks/3d_ij_suite/email.png), [Academia
Sinica](http://www.imb.sinica.edu.tw/en/), Taipei, Taiwan.

With many contributions from J. Ollion, Laboratoire Jean Perrin, Paris,
France.

## Features

This \"suite\" is composed of :

-   [3D Filters](/plugin/filter/3d_filters/start) (mean, median, max,
    min, tophat, max local, \...) and [edge and symmetry
    filter](/plugin/filter/3d_edge_and_symmetry_filter/start)
-   [3D Segmentation](/plugin/segmentation/3d_spots_segmentation/start)
    (iterative thresholding, spots segmentation, watershed, \...)
-   [3D Mathematical
    Morphology](/plugin/morphology/3d_mathematical_morphology_/start)
    tools (fill holes, binary closing, distance map, \...)
-   [3D RoiManager](/plugin/stacks/3d_roi_manager/start) (3D display and
    analysis of 3D objects)
-   [3D Analysis](/plugin/analysis/3d_analysis/start) (Geometrical
    measurements, Mesh measurements, Convex hull, \...)
-   [3D MereoTopology](/plugin/analysis/3d_mereotopology/start)
    (Relationship between objects)
-   [3D Tools](/plugin/stacks/3d_tools/start) (Drawing ellipsoids and
    lines, cropping, \...)

A 2D/3D [spatial
statistics](/plugin/analysis/spatial_statistics_2d_3d/start) plugin is
also available.

## Installation

From version 2.7, 3D ImageJ Suite is available in Fiji as an [Fiji
update site](http://fiji.sc/List_of_update_sites). The **Java8** and
**ImageScience** update sites must be activated in Fiji, see
instructions [here](https://imagej.net/Following_an_update_site).

You can also install 3D ImageJ Suite
[manually](/plugin/stacks/3d_ij_suite/start#download) and unzip it in
your plugins folder. The various plugins will appear in the menu *3D* of
the plugins list. You have also to manually download and copy into your
plugins directory the **imagescience.jar** library from
[here](http://www.imagescience.org/meijering/software/featurej/).

## Download

ImageJ 1.47 or later is required. Java3D is also required, check that
[3D Viewer](http://rsbweb.nih.gov/ij/plugins/3d-viewer/) is working.

**NEW** From version 3.83 and later the new version 4.0.1 of 3D_Viewer
is required (please remove the 3D_Viewer plugin provided by ImageJ and
replace it by ![this
version](/plugin/stacks/3d_ij_suite/3d_viewer-mcib.zip), just unzip the
file in the plugins directory).

Java 1.8 or later is required. \*\*The
[imagescience](http://www.imagescience.org/meijering/software/featurej/)
library is required \*\* :
[download](http://www.imagescience.org/meijering/software/download/imagescience.jar).
**Bundle** : ![](/plugin/stacks/3d_ij_suite/mcib3d-suite3.96.zip)

Core library : ![](/plugin/stacks/3d_ij_suite/mcib3d-core-3.96.jar)

Plugins : ![](/plugin/stacks/3d_ij_suite/mcib3d_plugins-3.96.jar)

The
[ConvexHull3D](http://rsbweb.nih.gov/ij/plugins/3d-convex-hull/index.html)
plugin is required only for mesh measurements : ![quickhull
jar](/plugin/stacks/3d_ij_suite/quickhull3d-1.0.0.jar)

Sources are available on [GitHub](https://github.com/) for
[core](https://github.com/mcib3d/mcib3d-core) and
[plugins](https://github.com/mcib3d/mcib3d-plugins).

## Citation

If you use the 3D suite for your publication please cite :

J. Ollion, J. Cochennec, F. Loll, C. Escudé, T. Boudier. (**2013**)
TANGO: A Generic Tool for High-throughput 3D Image Analysis for Studying
Nuclear Organization. *Bioinformatics* 2013 Jul 15;29(14):1840-1.
[doi](http://dx.doi.org/10.1093/bioinformatics/btt276)

## License

GPL distribution (see [license](http://www.cecill.info/index.en.html)).
Sources available on Github (see Download)

## Acknowledgements

The 3D suite would like to thanks the developers of the following
plugins :
[Imagescience](http://www.imagescience.org/meijering/software/featurej/),
[LocalThickness](https://www.optinav.info/Local_Thickness.htm),
[ConvexHull3D](http://rsbweb.nih.gov/ij/plugins/3d-convex-hull/index.html),
[3D Object Counter](/plugin/analysis/3d_object_counter/start),
[droplet](/plugin/analysis/droplet_counter/start) and : P. Andrey, J.-F.
Gilles.

## Links

-   [BoneJ](http://bonej.org/)
-   [DropletCounter](/plugin/analysis/droplet_counter/start)
-   [3D
    Shapes](https://sites.google.com/site/learnimagej/plugins/3d-shape)
-   [3D Annotation Tool](/plugin/utilities/annotation_roi_3d/start)
-   [](/plugin/analysis/3d_object_counter/start)
-   [3D Viewer](http://3dviewer.neurofly.de/)
-   [Local Thickness](http://www.optinav.com/Local_Thickness.htm)

## Change Log

-   25/09/2012 V2.0 : first version
-   28/09/2012 V2.1 : corrected bug in display (Ellipsoid3D and
    RoiManager3D)
-   12/10/2012 V2.2 : calibration bug fixed in spatial statistics
-   22/10/2012 V2.3 : bug fixed for filters3D with 32-bits images
-   29/10/2012 V2.3 : new macro functions for 3D Manager
-   08/02/2013 V2.4 : new plugin MereoTopology 3D
-   21/03/2013 V2.5 : new design for 3D Manager
-   28/05/2013 V2.6 : bug fixes and improvements, new filters openGray
    and closeGray
-   24/10/2013 V2.7 : new segmentation Iterative thresholding; check for
    required libraries at startup; 32-bits segmentation and labelling
-   21/03/2014 V2.71: bug fix in Segment3D
-   03/06/2014 V2.8 : new plugin shape analysis. Load/save objects with
    calibration.
-   03/10/2014 V2.9 : new Results Tables for 3DManager
-   21/11/2014 V3.0 : closest object in selection for 3D Manager. Macros
    functions to save results for 3D Manager
-   27/04/2015 V3.1 : bug in colocalisation (rare objects
    configuration) + improved split + poles in ellipsoid fitting
-   25/05/2015 V3.2 : improved watershed (especially for flat regions)
-   05/06/2015 V3.3 : new function closeResults saveResults 3DManager +
    exclude on edges
-   20/08/2015 V3.4 : redesigned Watershed, Record Iterative
    Thresholding, Quantification in 32-bits images with NaN values
-   01/09/2015 V3.5 : compatibility with ImageScience 3.0
-   07/12/2015 V3.6 : bug fixes, new edge and symmetry filters, sync
    between 3D Viewer select object and 3DManager
-   02/03/2016 V3.7 : bug fixes, new plugin exclude objects on borders
-   18/03/2016 V3.71: new plugin 3D Maxima Finder
-   30/03/2016 V3.74: bug fixed in EDT
-   04/07/2016 V3.82: compatibility with new version of 3D viewer,
    improvements and bug fixes
-   22/08/2016 V3.83: New plugin Radial Distance Area Ratio (RDAR),
    Watershed improved
-   10/04/2017 V3.9 : Display computing time and ETC for filters, new
    LooknFeel for Manager
-   05/01/2018 V3.91: Bug fixes and improvements
-   14/03/2018 V3.92: Bug fixes and improvements. New Roi3D overlay in
    3DManager
-   19/10/2018 V3.93: Bug fixes and improvements. New plugins
    MultiColoc, EVF radial analysis and density
-   15/01/2019 V3.94: Bug fixes and improvements. 3D Manager interface
    improved.
-   30/10/2019 V3.96: Bug fixes and improvements. New plugins distances
    and interactions.
