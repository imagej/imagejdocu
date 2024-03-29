# TAPAS Tutorial : Colocalisation

## Introduction

In this tutorial we will learn some basic analysis functions of
[TAPAS](/plugin/utilities/tapas_/integrated_framework_for_automated_processing_and_analysis/start).
We will learn how to use the **multiColoc** module to compute
**co-localisation** between two populations. Please check you understand
the basics of
[TAPAS](/plugin/utilities/tapas_/integrated_framework_for_automated_processing_and_analysis/start).
You can also check this [tutorial on segmentation with
TAPAS](/plugin/utilities/tapas_tutorial_/segmentation/start).

### Input data

Here we will need two labelled images as inputs, the **multiColoc**
module will then find the pairs of objects co-localising and compute the
volume of their intersection. First we will need to get one image as
input and save it as a temporary file.

![First image](/plugin/stacks/3d_ij_suite/coloc-a.png)

\<code\> // We use here the raw data as the reference image and // we
assume the first labelled image has the same name // as the reference
image with -spots2 process:input name:?name?-spots2

// we then save this file locally // here in the ImageJ/Fiji folder
process:save dir:?ij? <file:?name?-coloc2.tif> \</code\>

We can then get the other image as input.

![First image](/plugin/stacks/3d_ij_suite/coloc-b.png)

\<code\> // We use here the raw data as the reference image and // we
assume the first labelled image has the same name // as the reference
image with -spots1 process:input name:?name?-spots1 \</code\>

### Computing co-localisation

We then use the **multiColoc** module to compute co-localisation between
the two spots populations. The module will require to specify the path
to the other labelled image, in our case the image *spots2* that we
saved locally, and the path to save the results.

\<code\> // Multi-colocalisation between two images // we need the path
to the other label image // here image spots1 // results will be saved
locally process:multiColoc dirLabel:?ij? fileLabel:?name?-spots2.tif
dir:?ij? <file:?name?-coloc.csv> \</code\>

![Results table for
co-localisation](/plugin/stacks/3d_ij_suite/coloc-resultstable.png)

The first column **label** refers to the objects in the first image,
called *A*, here *-spots1*, with their label value. The second column
**O1** will refer to the label of a co-localised object in the second
image, called *B*, here *-spots2*. The third column **V1** is the
intersection volume between the two objects co-localising, in number of
pixels. The fourth column **P1** is the ratio of the intersection volume
over the volume of object in *A*, giving an idea of the importance of
the co-localisation. If the object in *A* co-localises with a second
object, the column **O2**, **V2** and **P2** will give information about
the co-localisation between object in *A* and a second object in image
*B*.

In our example, the object with value 295 in image *A* will co-localise
with object with value 1124 in image *B*, with an intersection volume of
only 3 pixels. The object 295 in image *A* does not co-localise with
another object in image *B*.

### Saving the results and cleaning temporary files

The results are saved as temporary files, we must *attach* them to the
original raw data. The module **attach** will *attach* results file to
the image within Omero or will copy the results in the same folder as
the original image if data are on files.

\<code\> // attach results file to data in omero or on files
process:attach dir:?ij? <file:?name?-coloc.csv> \</code\>

Finally we can delete the temporary file. \<code\> // delete temporary
spot2 file process:delete dir:?ij? <file:?name?-spots2.tif> \</code\>
