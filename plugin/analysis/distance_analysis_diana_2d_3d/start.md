## Distance Analysis (DiAna)

This plugin allows :

-   Calculating co-localization between objects in 3D
-   Measuring 3D distances between nearest object, co-localized or not
-   Getting some 3D measurements about each objects

The plugin can be used with labelled images, but it also integrates
tools for the segmentation of the objects.

## Author

Jean-Francois Gilles, jean-francois.gilles at upmc.fr, [Institute of
Biology Paris Seine](http://www.ibps.upmc.fr/en) (France).

Thomas Boudier ![email](/plugin/stacks/3d_ij_suite/email.png), [Walter &
Eliza Hall Institute](https://www.wehi.edu.au/), Melbourne, Australia.

## Features

[Denoise filter]{.underline}

-   Mean, Median, Gaussian blur filters

[Segmentation of the objects]{.underline}

-   Global thresholding
-   [3D spot
    segmentation](/plugin/segmentation/3d_spots_segmentation/start)
-   [3D iterative
    segmentation](/plugin/segmentation/3d_spots_segmentation/start)

[Object based co-localization and distance analysis]{.underline}

-   Colocalization from objects in image A, B, and/or A+B
-   Distance center -- center ;
-   Distance center -- edge ;
-   Distance edge -- center ;
-   Surface in contact
-   Generates results representations such as:
-    - Objects\' map;
-    - Colocalization object\'s map ;

[Counting and measurements on objects]{.underline}

Counts the number of 3D objects in two stacks.

Quantifies for each found object the following parameters:

-   Volume
-   Mean of the gray values
-   Surface area
-   Standard deviation of the gray values
-   Minimum & Maximum gray values
-   Centroid
-   Centre of mass
-   Feret\'s Diameter

## Description

* Note that when the mouse arrow passes on the items of the plugin, an
explanation of each parameter is given*.

Open at least two images. This plugin does not support RGB and 32-bits
images.

### Images to analyse

Select the image A and the image B. The image A is the reference image.

[Binary images:]{.underline}

Apply threshold with value 1

Filter objects by size and remove objects from image edges is possible

[Gray level images:]{.underline}

Apply filter to suppress noise (optional)

Segment the image with either threshold or spot segmentation method

\- Threshold method :

choose a threshold value

Filter objects by size and remove objects from image edges is possible

\- Spot segmentation method : a tutorial for this method is found
[here](/plugin/segmentation/3d_spots_segmentation/start) 

\- Iterative segmentation method : a tutorial for this method is found
[here](/plugin/segmentation/3d_spots_segmentation/start)

\- Filter objects by size is possible

### Interactions filters

When unchecking « All objects touching » , the plugin will analyse the
non co-localizing objects in addition to co-localizing objects.

### Measures & Analysis

[Colocalisation]{.underline}

Choose the parameters that will be measured for co-localizing objects

[Distance]{.underline}

Choose the parameters that will be measured for non co-localizing
objects

[Shuffle]{.underline}

Select to do a shuffle of the objects on all the image or inside a mask

[Other measures]{.underline}

Choose the parameters that will be measured for each objects

[Resolution infos]{.underline} Image calibration has to be given for the
measurements to be calibrated (otherwise they will be given in pixels).
If images opened are already calibrated, the plugin reads the
calibration.

### The plugin retrieves :

-   Objects from image A and B are listed in a ROI Manager.
-   Number of objects and number of co-localizing objects are given in
    the log window.
-   ColocResults gives measurements on co-localizing objects.
-   DistanceResults gives measurements on non co-localizing objects.
-   Curve of the shuffle (cumulative distances)
-   OtherMeasuresResults-A/B gives measurements on each objects from
    images A and B.

### Batch :

If the recorder has a problem, here are some examples of macro line:

-   run(\"DiAna_Segment\", \"img=imageName.tif filter=median rad=1.0
    thr=740-3-2000-true-false\");
-   run(\"DiAna_Segment\", \"img=C0.tif peaks=2.0-2.0-50.0
    spots=30-10-1.5-3-2000-true\");
-   run(\"DiAna_Segment\", \"img=C0.tif iter=3-2000-20-30-true\");
-   run(\"DiAna_Analyse\", \"img1=imageA.tif img2=imageB.tif
    lab1=segA.tif lab2=segB.tif coloc adja kclosest=2 dista=70.0\");
-   run(\"DiAna_Analyse\", \"img1=imageA.tif img2=imageB.tif
    lab1=segA.tif lab2=segB.tif coloc distc=50.0 adja kclosest=1
    dista=50.0 measure\");

If the image name has a space, use brackets around it :

run(\"DiAna_Segment\", \"img=\[image name.tif\] filter=median rad=1.0
thr=700-3-2000-true-false\"); \<code\> im=getTitle(); run(\"Split
Channels\"); run(\"DiAna_Segment\", \"img=\[C1-\"+im+\"\]
peaks=5.0-4.0-500.0 spots=500-10-1.5-6-200-false\");\</code\>

## Installation

Download and copy the following jar in your plugins folder
![diAna_1.48.jar](/plugin/analysis/distance_analysis_diana_2d_3d/diana_1.48b.jar)

You have also to manually download and copy into your plugins directory
the [3D ImageJ Suite](/plugin/stacks/3d_ij_suite/start).

Note that this version works only with
![](/plugin/stacks/3d_ij_suite/mcib3d-core3.94.jar) and upper!

If a problem appends, use version Core library :
![](/plugin/stacks/3d_ij_suite/mcib3d-core3.94.jar) of mcib-core from
the 3D Suite.

## Citation

Gilles J-F, Dos Santos M, Boudier T, Bolte S, Heck N. DiAna, an ImageJ
tool for object-based 3D co-localization and distance analysis. Methods
2016 Nov 24.
<http://www.sciencedirect.com/science/article/pii/S1046202316304649>

The spot segmentation method is based on : Heck N, Dos Santos M, Amairi
B, Salery M, Besnard A, Herzog E, Boudier T, Vanhoutte P, Caboche J. A
new automated 3D detection of synaptic contacts reveals the formation of
cortico-striatal synapses upon cocaine treatment in vivo. Brain Struct
Funct. 2014 Jul 8. DOI 10.1007/s00429-014-0837-2.
<http://link.springer.com/article/10.1007%2Fs00429-014-0837-2>

## License

GPL distribution (see [licence](http://www.cecill.info/index.en.html) ).
Sources for plugins are available freely.

## Change log

-   14/12/2016 v1.0.1: bug fixed for retrieving the calibration, add
    \"about\" button
-   16/12/2016 v1.1: add save 3D-ROIs button
-   05/09/2017 v1.2: many improvements within the code. update
    possibility when initializing images in Analyse. macro enable for
    the labelling part
-   25/01/2018 v1.3: 8bits bug fixed, add macro features
-   05/07/2018 v1.4: bugs fixed
-   19/12/2018 v.1.41: bugs fixed
-   21/12/2018 v.1.42: show again info in the log
-   17/01/2019 v.1.43: correct user interface and a bug with 2D images,
    thanks to Chin-Chun
-   14/05/2019 v.1.44: bugs fixed and compatibility with the last
    version of 3D Suite.
-   29/10/2019 v.1.45: bugs fixed and maven update. Thanks to N.
    Chiaruttini
-   24/01/2020 v.1.46: bug fixed, add coloc image in the batch
-   24/02/2020 v.1.47: bug fixed with the shuffle in macro line
