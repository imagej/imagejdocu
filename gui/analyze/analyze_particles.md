# Analyze Particles\...

This command counts and measures objects in binary or thresholded images
accoding to the parameters set with the **Analyze\>Set Measurements**
dialog.. It works by scanning the image or selection until it finds the
edge of an object. It then outlines the object using the **wand tool**,
measures it using the **Measure** command, fills it to make it
invisible, then resumes scanning until it reaches the end of the image
or selection. Press the **Esc** key to abort this process. Use
**Image\>Adjust\>Threshold** to threshold an image.

![Analyze Particles
Example](http://rsb.info.nih.gov/ij/docs/images/ap-example.jpg){width="593"
height="202"}\
Use the dialog box to configure the particle analyzer.

Particles outside the range specified in the **Size** field are ignored.
Enter a single value in **Size** and particles smaller than that value
are ignored. Particles with circularity values outside the range
specified in the **Circularity** field are also ignored. The formula for
circularity is 4pi(area/perimeter\^2). A value of 1.0 indicates a
perfect circle. For small particles, the circularity can be \>1 (due to
the definition of perimeter and area in a square grid). In those cases
the value of 1.0 is returned (before v1.37 this was set as -1.0). Note
that the **Circularity** field was added in ImageJ 1.35e.\
![Analyze Particles
Dialog](http://rsb.info.nih.gov/ij/docs/images/ap.jpg){width="327"
height="272"}

Select **Outlines** from the \"**Show:**\" popup menu and ImageJ will
open a window containing numbered outlines of the measured particles.
Select **Masks** to display filled outlines of the measured particles or
**Ellipses** to display the best fit ellipse of each measured particles.
**Count Masks** generates a 16 bit image showing the particles painted
with a value corresponding to the particle number.

![Analyze Particles Output
Options](http://rsb.info.nih.gov/ij/docs/images/ap-show.jpg){width="795"
height="249"}\
Check **Display Results** to have the measurements for each particle
displayed in the \"Results\" window.

Check **Clear Results** to erase any previous measurement results.

Check **Summarize** to display, in a separate window, the particle
count, total particle area, average particle size, and area fraction.

Check **Exclude on Edges** to ignore particles touching the edge of the
image or selection.

Check **Include Holes** and the area particle will be measured counting
the area of any holes as if they were filled.

Leave this option unchecked to exclude interior holes and to measure
particles enclosed by other particles. The following example image
contains particles with holes and particles inside of other particles.

![Analyze Particles: Examples for different
options](http://rsb.info.nih.gov/ij/docs/images/ap-examples.gif){width="646"
height="400"}\
The **Record Starts** option records the \"starting coordinates\" (x,y)
of each particle. This is the first pixel in the particle found when
scanning the image (it is the left-most top-most pixel in the particle).
This pixel is very special, since it allows plugins and macros to:

-   recreate a particle outline using the doWand(x,y) function,
-   recolor, fill or erase it using the floodFill() function (make sure
    that you use 8-neighbour filling),
-   reconstruct particles using the Starts as seeds with the Binary
    Reconstruct plugin.

Other particle coordinates such as the Center of Mass or the Centroid
are not guaranteed to be always included in the particle (for example
think of particles with holes and curved particles).

The *CircularParticles macro* demonstrates how to use the Starts.

**Add to Manager** adds the particles ROIs to the *ROI Manager* and
shows them labelled (press \*\*Show All \*\*in the *ROI Manager* to hide
the labels) (added in 1.37u).
