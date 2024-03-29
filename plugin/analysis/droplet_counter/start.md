# Lipid Droplet Counter

**Finds and counts white spots in a stack and measures volume and area
of them**

This package contains utilities to count and measure lipid droplets or
any other bright spots in a 3D stack.

It also contains:

-   a 3D Watershed implementation
-   a 3D Bandpass Filter

**Usage:**

Copy the file
![Droplet_Counter.jar](/plugin/analysis/droplet_counter/droplet_finder.jar)
into your Imagej plugins directory. The jar file also contains the
GPL-licensed source code. You can open the jar file with any archive
manager, e.g. 7zip.

**Author:** Samuel Moll (samimoll@googlemail.com)

**Source Code**
![GitHub](https://github.com/ebmoll/lipid-droplet-counter)

## How to use the droplet counter plugins

write bug reports, feature requests and questions to:
samimoll@googlemail.com

------------------------------------------------------------------------

\*\* What you need: \*\*

-   any ImageJ version from 2008 or newer
-   the \"Droplet_Finder.jar\" file

------------------------------------------------------------------------

\*\* Quick Start: \*\*

-   Copy all the needed files into your ImageJ/plugins folder
-   Start ImageJ, open your image stack, select \"Droplet
    Finder/Filterstacker\"<https://peerj.com/articles/cs-86/>
    -   Enter the minimum and maximum feature sizes (size bounds in
        pixels for your droplets)
    -   Enter your Z/X aspect ratio
-   wait until a Window labeled \"BP-\...\" appears (could take some
    time)
    -   In the \"Watershed 3D\" Box enter \"2.0\" for all radii, check
        \"Invert\", then \"OK\"
-   In the \"Segment Analyzer\" Box choose \"BP-\...\" as image,
    \"WS-\...\" as mask
    -   **If you run Windows**: before you click ok, make sure that the
        \"Filterstacker-\...\"-image is not occluded by any window,
        otherwise you won\'t see the preview. **You can also cancel the
        Segment Analyzer and rerun it manually after minimizing all
        other ImageJ windows. That makes sure that you can actually see
        the preview window.**
-   navigate the stack with the \"Slice\" slider while choosing optimal
    area and maximum threshold parameters. Click \"OK\" **The view
    doesn\'t update until you change any of the values.**
-   The Segment Analyzer will output a measurement table

------------------------------------------------------------------------

\*\* What the Filterstacker actually does: \*\*

The \"Filterstacker\" plugin actually only does a 3D-bandpass on your
stack. It will first 3D-blur the input image with a filter size of
\"maximum feature size\" and substract the blurred image from the
original. It will then eliminate small features (like noise) by blurring
again with a small filter the size of \"minimum feature size\". The
\"Z/X aspect ratio\" compensates for different lateral and vertical
resolutions.

It will then call the \"Watershed 3D\" plugin that finds all local
maxima (white spots) and grows regions around them, so that each region
only contains one maximum. It will output a new stack where each region
is labeled with a unique color. The radii control how far apart the
maxima must be until they are regarded as only one maximum. Setting this
to higher values makes the watershed transform more resistant to noise
while increasing the running time (higher radii than 3 take VERY long)
and the probability that two spots that are close together are combined
into one region. Big radii also make the edges of the regions more
fuzzy. Setting all radii to 2 is a good compromise. If the \"Invert\"
option is unchecked, the plugin will find minima (black spots) instead
of maxima.

Finally the Filterstacker calls the \"Segment Analyzer\" plugin that
takes as input an image and a mask (=the watershed transform). The
Segment Analyzer decides which regions contain a droplet by thresholding
(explained below). It then does a FWHM threshold on all regions that
passed the previous thresholding test and measures the volume, position
and surface area of each droplet. The region thresholding is very simple
at the moment. It only considers the maximal and summed (over the whole
region) brightness (the \"maximum threshold\" and \"area threshold\"
parameters). If both values are above the respective thresholds, the
region is considered to contain a droplet. The Segment Analyzer has a
preview. Because of ImageJ design restrictions, the stack has to be
navigated with the \"Slice\" slider. Red marks particles, the borders
between particles are green. If there is a green line through one of
your particles, lower the \"connect threshold\".

## Citing lipid droplet counter in academic papers

If you publish a paper relying on results obtained with ImageJ and this
plugin, and want to add a citation to your paper, you could e.g. follow
![these recommendations](https://peerj.com/articles/cs-86/) for citing.

DOI for citing: [DOI
10.5281/zenodo.2581434](https://zenodo.org/badge/latestdoi/52263175)

## FAQ

-   **Q:** What are the units used for the measured volume and surface
    area?
-   **A:** The units are pixels cubed (=voxels) and pixels squared
    respectively. The surface area is estimated based on the assumption
    that your voxels have the same height, width and length. If this is
    not the case (Z/X aspect ratio != 1), the estimated surface area is
    wrong.

```{=html}
<!-- -->
```
-   **Q:** How can I use this plugin to find out the diameter (or other
    values) of my droplets?
-   **A:** The Lipid Droplet Finder outputs a table containing for each
    droplet the volume, surface area and position. Assuming the droplet
    is round and your voxels are cubic (see above question), it\'s
    diameter d can be found from the measured volume V by the simple
    formula d=(6\*V/Pi)\^(1/3). The validity of the assumption that the
    droplet is round can be checked by comparing the measured surface
    area A of the droplet to the one calculated with the formula for the
    area of a sphere, A=Pi\*(d\^2). Note that due to numerical errors
    the measured surface can actually be *smaller* than the one of a
    sphere of equivalent volume.

```{=html}
<!-- -->
```
-   **Q:** Can I merge independent 2D images into one 3D stack and use
    the plugin to find all droplets at once?
-   **A:** This cannot be done easily since the plugin was originally
    designed to work with 3D images, and that it works with 2D images is
    more of a by-product. If you use this plugin on an image stack it
    will assume that it is a 3D image and connect droplets across
    slices.

```{=html}
<!-- -->
```
-   **Q:** Can I use this plugin on 2D images of cells instead of
    stacks?
-   **A:** Yes, this works perfectly, but beware that the measured
    \"volume\" will actually be the surface area and the measured
    \"surface area\" is the circumference of the droplet.

```{=html}
<!-- -->
```
-   **Q:** Where can I see in the \"Particle Results\" window to which
    droplets each measurement row belongs?
-   **A:** Unfortunately, you can\'t see this directly. However, for
    each droplet a center point is calculated and displayed as
    \"position x/y/z\". This is in pixels. If you set your unit of
    length (\"Image\"-\>\"Properties\...\") to 1, you can find the
    position with the mouse. Sorry for the inconvenience.

```{=html}
<!-- -->
```
-   **Q:** What should I put as X/Z aspect ratio?
-   **A:** The z-ratio is used to tell the plugin the ratio of your
    voxels, and thus the dimensions of your image stack.

#### 

For example: Lets say you measure 30 images in the z-plane with a
resolution of 512x512 each. The imaged region is 10um x 10um big, and
the 30 z-planes span a distance of 2um, i.e. the lowest image of the
z-stack (number 1) is right on your glass substrate and the highest
image (number 30) is 2um above the glass substrate. Then your
pixels/voxels have the following dimensions:

    x: 10um / 512 = 19.5nm
    y: 10um / 512 = 19.5nm
    z: 2um / 30 = 66.7nm

Normally, your imaging system gives you the width of a pixel (x and y
values) and the stack step size (z value) directly. In our example the
z-resolution is considerably worse than the x- and y-resolutions. (This
is very common with CLSM images) **The z-ratio is then just z divided by
x, i.e. 66.7nm/19.5nm = 3.4**. This is what should be put in the
confusingly-named \"Z/X aspect ratio\" field. That said, you can
experiment a bit with this setting (set it to higher/lower values than
the theoretically calculated ones) to get optimal object separation.
