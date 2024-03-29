## FLEYE

FLEYE is a package of ImageJ macros developed to classify fly eyes
attending to the distribution of their ommatidia using images of the eye
surface as starting data.

## Authors

Cristina Rueda Sabater, Sergio Díez Hermano, Diego Sánchez Romero, María
Dolores Ganfornina Álvarez and Jorge Valero Gómez-Lobo
(jorge.valero@cnc.uc.pt)

## Features

The FLEYE package includes three ImageJ macros that will allow the user
to:

-   1.- select in each image the regions of interest (ROI) for analysis,
-   2.- optimize parameters
-   3.- and analyze the images.

![](/plugin/analysis/fleye/fleye_menu.png)

## Description

FLEYE package contains three macros created to:

1.- Sequentially design ROIs in the images to select the area to be
analyzed (Fleye rois).

![](/plugin/analysis/fleye/roi_design.png)

2.- Optimize parameters: rolling ball radius and Find Maxima noise
Tolerance (Fleye optimizer).

![](/plugin/analysis/fleye/optimization.png)

3.- Analyze ommatidia (Fleye analyzer) using the model published in
\"Diez-Hermano, Valero J, Rueda C, Ganfornina MD and Sanchez D. An
automated image analysis method to measure regularity in biological
patterns: a case study in a Drosophila neurodegenerative model.
Molecular Neurodegeneration 2015, 10:9 (DOI
10.1186/s13024-015-0005-z)\".

![](/plugin/analysis/fleye/table_results.png)

## Installation

Unzip the ![](/plugin/analysis/fleye/fleye2_2.zip) or individual macro
files into the plugins folder of FIJI.

------------------------------------------------------------------------

To solve the issue of malfunction due to FIJI updates we have also
included the version of FIJI used when developing FLEYE plugin in
FIJI_with_FLEYE.zip files (available for Win32 and Win64).

## Downloads

**Compressed packages:**

-   Compressed FLEYE package: ![](/plugin/analysis/fleye/fleye2_2.zip)
-   FIJI version for Windows 32 bits with FLEYE:
    ![](/plugin/analysis/fleye/fiji-win32_with_fleye.zip)
-   FIJI version for Windows 64 bits with FLEYE:
    ![](/plugin/analysis/fleye/fiji-win64_withfleye.zip)

**Uncompressed macros:**

-   Fleye menu: ![](/plugin/analysis/fleye/fleye_menu_v2.2.ijm)
-   Fleye rois: ![](/plugin/analysis/fleye/fleye_roisv1.3.ijm)
-   Fleye optimizer:
    ![](/plugin/analysis/fleye/fleye_optimizer_v4.3.ijm)
-   Fleye analyzer: ![](/plugin/analysis/fleye/fleye_v10.5.ijm)

**Guides:**

-   Quick guide: ![](/plugin/analysis/fleye/fleye_quick_guide.pdf)
-   User manual: ![](/plugin/analysis/fleye/fleye_guide.pdf)

**Old versions:**

-   Fleye menu: ![](/plugin/analysis/fleye/fleye_menu_v2.ijm)
-   Fleye rois: ![](/plugin/analysis/fleye/fleye_roisv1.2.ijm)
-   Fleye optimizer:
    ![](/plugin/analysis/fleye/fleye_optimizer_v4.2.ijm)
-   Fleye analyzer: ![](/plugin/analysis/fleye/fleye_v10.4.ijm)

## References/Citation

-   Diez-Hermano, Valero J, Rueda C, Ganfornina MD and Sanchez D. An
    automated image analysis method to measure regularity in biological
    patterns: a case study in a Drosophila neurodegenerative model.
    Molecular Neurodegeneration 2015, 10:9 (DOI
    10.1186/s13024-015-0005-z)

## License

GNU General Public License FLEYE is free software: you can redistribute
it and/or modify it under the terms of the GNU General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

FLEYE is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE. See the [GNU General Public
License](http://www.gnu.org/copyleft/gpl.html) for more details.

Copyright (C) 2014 Cristina Rueda Sabater, Sergio Díez Hermano, Diego
Sánchez Romero, María Dolores Ganfornina Álvarez and Jorge Valero
Gómez-Lobo (jorge.valero@cnc.uc.pt).

## Changelog

##### 17.06.2015

New versions:

fleye2_2.zip

Fleye menu: fleye_menu_v2.2.ijm Fleye rois: fleye_roisv1.3.ijm Fleye
optimizer: fleye_optimizer_v4.3.ijm Fleye analyzer: fleye_v10.5.ijm

Change in Bioformats importer options (autoscale added) to solve some
problems when opening images with FIJI running ImageJ version 1.49u.

##### 16.03.2015

fleye_optimizer_v4.3.ijm

fleye_v10.5.ijm

Spelling correction in parameters menu

------------------------------------------------------------------------

## Known Bugs
