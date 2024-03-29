# TAPAS Tutorial : Create your Processing Pipeline I

In this tutorial we will learn some basic functions of
[TAPAS](/plugin/utilities/tapas_/integrated_framework_for_automated_processing_and_analysis/start).
We will learn how to use the wizard to create some processing pipelines.
A pipeline is a series of small modules that will process an image from
the input to the quantitative analysis. Please check you understand the
basics of
[TAPAS](/plugin/utilities/tapas_/integrated_framework_for_automated_processing_and_analysis/start)
and have a look to this [tutorial on
Input/Output](/plugin/utilities/tapas_tutorial_/input_output_i/start).

## Your first module

The wizard is called **TAPAS MENU** and can be found in TAPAS in the
list of plugins or above the toolbar.

![The TAPAS MENU
window](/plugin/stacks/3d_ij_suite/menu1.png){width="500"}

This window will list all the available modules from the file
*tapas.txt* located in the ImageJ folder. When a module is selected, the
available parameters are displayed on the right. If default values exist
for these parameters they will be displayed. A short description of the
selected module is also available below the list of modules.

The first module should always be an input module, to load data from
OMERO or a folder (please have a look to this [tutorial on
Input/Output](/plugin/utilities/tapas_tutorial_/input_output_i/start)).

In this tutorial we will start by **denoising** the image by using a 3D
median filter. Select the module **filters**. This module has 3
parameters, the radius in XY, radius in Z and the name of the filter. A
list of modules with description of parameters is available
![here](/plugin/stacks/3d_ij_suite/tapasdescription0.51.pdf). You can
change parameters if you want, the list of available parameters are :
median, mean, tophat, open, close, min and max. Then just click on
**create text** to create the corresponding text for this module, in our
case it is simply : \<code\> process:filters radxy:2 radz:1
filter:median \</code\>

![The first
processing](/plugin/stacks/3d_ij_suite/menu2.png){width="500"}

There is no specific order for parameters. Note also that only
parameters with modified or required values are to be explicitly
entered; parameters with default values, if they exist, do not need to
be entered, they can be omitted if you do not modify them, a short
version of **filters** is then : \<code\> // use the module filters with
default values process:filters \</code\>

If you modify the filter but not the default radii, the text is then :
\<code\> process:filters filter:mean \</code\>

If all parameters are modified they need to be entered : \<code\>
process:filters filter:mean radxy:4 radz:2 \</code\>

## Your first processing pipeline

We will build a quite classical processing pipeline :

1.  denoising, 3D median filter
2.  thresholding
3.  labeling
4.  quantitative measurements

First use the module **3dfilter** as seen above : \<code\>
process:filters radxy:2 radz:1 filter:median \</code\>

The next module is then **thresholding**, we start with the most basic
thresholding, with a fixed value. By default, the *value* is set to 128,
of course adjust it to your image. The parameter *user* will be
explained in another tutorial, for now do not modify it. \<code\> //
parameters with default values can be omitted if they are not modified
process:threshold value:128 \</code\>

The image is now binarized, where the values of the pixels are either 0
for background or 1 for objects, but we still need to detect individual
objects, this is done by labeling the image (aka segmentation). Select
the module **label**, it has 2 parameters *minVolume* and *maxVolume*.
These two parameters correspond to the minimum volume and maximum volume
(in number of voxels) of the objects to be detected, if the objects are
too small or too big they will be discarded from the segmentation. The
value -1 for maximum volume means we do not fix any maximum volume, only
too small objects will be discarded. \<code\> // parameters with default
values can be omitted if they are not modified process:label
minVolume:10 \</code\>

The image is now labeled, where the value of the pixel is the object
number. The final module is **measurement**, it will perform geometric
measurement of the objects present in the image. The **list** of
available measurements are : volume, area, centroid, compactness,
ellipsoid, DC (Distance to Center). Simply enter the name of the
measurements separated by **,**. The measurements result will be saved
as csv file (that you can open with a spreadsheet software or with
ImageJ). You will need to indicate the **directory** and the **file
name** where to save this file. By default, the name of the file will be
*results.csv* and the directory will be the home directory using the
keyword *?home?*.

Possible keywords for folders are :

-   *?home?* for the user home directory
-   *?ij?* for the ImageJ directory
-   *?tmp?* for the system temporary directory

These directories can be used with static directory such as :
*?home?/MyResults* or *?ij?/plugins/TAPAS*.

The text for the **measurement** module will look like this : \<code\>
// parameters with default values can be omitted if they are not
modified process:measurement dir:?home? <file:results.csv>
list:volume,centroid \</code\>

By pressing each time the// create text// button, you should obtain a
complete processing pipeline text.

![The final
processing](/plugin/stacks/3d_ij_suite/menu3.png){width="500"}

Finally, you can copy and paste the text in a text file and save it on
your computer. You can then use **TAPAS OMERO** or **TAPAS FILES** to
run the pipeline on selected images.

## Pushing back results into OMERO

In case you have OMERO installed and want to push back the results into
OMERO, you can use the module **attach**. First, you need to indicate
which file you want to push back, by specifying its **directory**
(*dir*) and its **file name** (*file*). Then you want to indicate which
image in OMERO this file should be attached to, you need to specify the
*project*, *dataset* and *name* of the image. By default, the module
will attach the file to the current processed image.

The keyword *?project?* corresponds to the project name of the currently
processed image, similarly *?dataset?* corresponds to the dataset name
of the currently processed image and ?name? to the name of the currently
processed image. The keywords can be coupled with static text, for
example if all the results are saved in another dataset called the name
of the original dataset followed by *-results*, then we simply indicate
*?dataset?-results*. Note that in case you are using **TAPAS FILES**,
the file will be copied to the folder corresponding to the dataset.

We should obtain, in case we simply attach the results to the original
image : \<code\> // we attach the results file to the current image //
in case we are using FILES the file will be copied into the dataset
folder. process:attach dir:?home? <file:results.csv> \</code\>
