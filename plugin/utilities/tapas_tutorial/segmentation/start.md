# TAPAS Tutorial : Segmentation

In this tutorial we will learn some basic functions of
[TAPAS](/plugin/utilities/tapas_/integrated_framework_for_automated_processing_and_analysis/start).
We will learn how to use the thresholding and segmentation modules.
Please check you understand the basics of
[TAPAS](/plugin/utilities/tapas_/integrated_framework_for_automated_processing_and_analysis/start)
and have a look to this [tutorial on
Input/Output](/plugin/utilities/tapas_tutorial_/input_output_i/start).

In this tutorial we will use the **DotBlot** image from ImageJ, download
it from *Open Sample*. We will first invert it to get bright objects
over a dark background.

![Dot blot
image](/plugin/stacks/3d_ij_suite/dot_blot-inv.png){width="256"}

## Basic thresholding

Thresholding will simply create a binary image based on the pixel value
and a threshold value, if the pixel value is lower than the threshold
value, it will be considered as background and is displayed usually in
black, if the pixel value is greater than the threshold value, it will
be considered as object and will be displayed in white.

The module **threshold** will simply ask for the threshold value and
will perform the thresholding, by default, the threshold value is 128
but this should be changed according to your image. The code is then :

\<code\> // thresholding with a fixed value // default value is 128
process:threshold value:128 \</code\>

In our example a value of 128 will not detect most of the dots.

![](/plugin/stacks/3d_ij_suite/dot_blot-inv-th128.png){width="256"}

A value of 65 will detect more dots, but will introduce some noise.

![](/plugin/stacks/3d_ij_suite/dot_blot-inv-th65.png){width="256"}

## Automatic thresholding

Automatic thresholding will compute an optimal threshold for your iamge
according to its histogram. Many algorithms exist to try to determine
the best threshold, they are detailed
[here](https://imagej.net/Auto_Threshold). The most famous algorithms
are : IsoData, Otsu, Yen or Triangle.

The module **autoThreshold** implements some of these algorithms :

-   Isodata
-   Otsu
-   Intermodes
-   Yen
-   Triangle
-   Mean
-   Huang
-   IJ_Isodata

Simply the thresholding algorithm name in the parameter *method*. An
option is also available to specify if your image has a *dark*
background, the value by default is *yes*, simply put *no* for an image
with a light background.

\<code\> // auto-thresholding // enter the method name // and if the
background is dark (yes by default) process:autoThreshold method:Otsu
\</code\>

In our example the Otsu method gives this result :

![](/plugin/stacks/3d_ij_suite/dot_blot-inv-otsu.png){width="256"}

and the Triangle method gives better results:

![](/plugin/stacks/3d_ij_suite/dot_blot-inv-triangle.png){width="256"}

## Iterative thresholding

The algorithm Iterative Thresholding is implemented in the [3D ImageJ
Suite](/plugin/stacks/3d_ij_suite/start) and is described
[here](/plugin/segmentation/3d_spots_segmentation/start#d_iterative_thresholding).
Basically all thresholds will be tested and for each threshold if an
object appear and has the right size the object is kept. If an object
appears at different threshold, only the threshold leading to the object
with the roundest shape is retained.

The module **IT** will implement this algorithm, you need to specify the
minimum volume of the objects with *minVolume*, the maximum volume with
*maxVolume*. You can also specify a noise level, a minimum threshold
value, *minThreshold*, to start the thresholdings. The default value for
*minVolume* is 100, for *maxVolume* it is -1 (mo maximum limit) and the
noise level default value, *minThreshold*, is 0.

\<code\> // Iterative thresholding // specify minimum and maximum volume
// and noise level (default 0) process:IT minVolume:10 \</code\>

In our example, if we set a minimum volume of 10 we get a lot of noise.

![](/plugin/stacks/3d_ij_suite/dot_blot-inv-itmin10.png){width="256"}

A minimum value of 200 allows us to detect all the dots without any
background noise objects.

![](/plugin/stacks/3d_ij_suite/dot_blot-inv-itmin200.png){width="256"}

## Hysteresis thresholding

The algorithm Hysteresis Thresholding is implemented in the [3D ImageJ
Suite](/plugin/stacks/3d_ij_suite/start) and is described
[here](/plugin/segmentation/3d_spots_segmentation/start). Basically two
thresholds are defined, a high and a low threshold. Objects are first
thresholded with the low threshold, only objects having a value higher
than the high threshold value are retained, other objects are discarded.

In our example we define the two thresholds 65 and 128 as explained in
the above section about basic thresholding. We can build an image with
three values, 0 (displayed in black) for pixels with value below the low
threshold, 128 (displayed in gray) for pixels with value above low
threshold but below high threshold, and 255 (displayed in white) for
pixels with value above high threshold.

![](/plugin/stacks/3d_ij_suite/dot_blot-inv.png_multi.png){width="256"}

Only gray objects containing white pixel will be retained, other will be
discarded. We then obtain the following binary image containing only
retained objects.

![](/plugin/stacks/3d_ij_suite/hyst_dot_blot-inv65-128-Bin.png){width="256"}

The module **hysteresis** will implement the hysteresis thresholding.
The low and high thresholds are specified in *minValue* and *maxValue*
(there are no default values).

\<code\> // hysteresis thresholding // you need to specify low and high
threshold values process:hysteresis minValue:65 maxValue:128 \</code\>

This module can also directly label the image, *i.e.* detect and segment
the different objects in the image.

![](/plugin/stacks/3d_ij_suite/hyst_dot_blot-inv65-128.png){width="256"}

You need simply to set the parameter *labeling* to *yes* (the value is
*no* by default). \<code\> // hysteresis thresholding // you need to
specify low and high threshold values // you can label the image
directly by setting the parameter labeling to yes process:hysteresis
minValue:65 maxValue:128 labeling:yes \</code\>
