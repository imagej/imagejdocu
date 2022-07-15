# Surface Blur

A plugin designed for blurring with edge preservation, written by
Douglas Cameron.

The technique is similar to several others that have previously been
implemented e.g. [Selective Gaussian
Blur](http://docs.gimp.org/en/plug-in-selective-blur.html) and the
[Bilateral
Filter](http://scien.stanford.edu/class/psych221/projects/06/imagescaling/bilati.html).

A new value for each pixel is calculated as a weighted average of a
subset of the surrounding pixels within a set radius. Two factors are
considered with regards to surrounding pixels, RGB difference and the
distance from the central pixel. The subset of pixels used is comprised
of pixels whose RGB difference is found to be below a set threshold. The
weighting assigned to the these pixels is dependent upon the distance
from the central pixel.

The following diagram shows a pixel and surrounding pixels within a
radius of 2. The pixels surrounded by a pink border are excluded from
the calculation due to their RGB difference being above the set
threshold.

![pixel_sample](/plugin/filter/surface_blur/pixelsample.gif){.align-center}

Variable parameters include:

-   Radius: The radius of surrounding pixels considered.
-   Proximity Weighting: The weighting given to the surrounding pixel
    relative to the distance.
-   Edge Threshold: The threshold which is used to discriminate between
    pixels on the near and far side of an edge
-   Iterations: The number of times the blur shall be performed

Below is an example, before and after the application of the surface
blur.

![Surfaceblur Example
Before](/plugin/filter/surface_blur/surfaceblur_example_before.jpeg){.align-center}

![Surfaceblur Example
After](/plugin/filter/surface_blur/surfaceblur_example_after.jpeg){.align-center}

The calculations involved are relatively simple and can be easily found
in the source code.

![surface\*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1](/filelist&gt;/plugin/filter/surface_blur/surface*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1)

\-\-- *[Douglas Cameron](/users/dcam) 2007/08/17 15:32*
