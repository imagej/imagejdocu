# Creating Pseudocolor Images using ImageJ

**It is common for microscopists to examine fluorescent samples that
have been exposed to a mixed set of fluorophores with specific staining
properties. Images are often captured from these samples as a set, using
different filter sets to isolate specific elements of the sample.
Sometimes the images are captured in gray scale, and in other cases,
they are captured with color cameras. In either case, one would often
like to combine the images to create a single image that presents the
information from all fluorophores at once. This kind of display is
particularly useful for determining the relative locations of different
components.**

The public domain program, ImageJ, written by Wayne Rasband at the
National Institutes of Health, Bethesda, MD.
(<http://rsb.info.nih.gov/ij/>), and extensively supplemented by many
contributors, contains a simple routine for taking three gray scale
images, assigning a separate color to each and merging them into an RGB
pseudocolor image.

The process starts with the set of three images such as the following,
which are derived from buccal cells stained with Wheat Germ
Agglutinin-Rhodamine, MitoTracker-Green, and DAPI, respectively.

![figure1.jpg](/howto/java/figure1.jpeg){.align-center}

**Figure 1**

The three pictures are opened individually in ImageJ.

Then, the menu item "Image\>color\>RGB merge" is selected.

![figure2.jpg](/howto/java/figure2.jpeg){.align-center}

**Figure 2**

This brings up a dialog box that allows one to enter the specific images
that are to form the final product.

![figure3.jpg](/howto/java/figure3.jpeg){.align-center}

**Figure 3**

Note that one has the option to enter any of the pictures in any of the
channels. The most direct is to put each image into the appropriate
channel. That is, red to red, green to green, etc. It is generally
useful to check the "Keep source images" box for further
experimentation. After clicking on "OK", the RGB image is generated
(Figure 4).

![figure4.jpg](/howto/java/figure4.jpeg){.align-center}

**Figure 4**

![figure5.jpg](/howto/java/figure5.jpeg){.align-center}

**Figure 5**

It is also possible to manipulate the channels for special purposes. As
an example, the image from the red source was used for both the red and
the blue channels, (omitting the blue data) to create an image of
magenta and green (Figure 5). This display is particularly useful for
those viewers who are deuteranopes (red/green color blind).

Once the image is formed, it is possible to adjust each of the color
channels independently using the menu item "Image\>Adjust\>Color
Balance"

There are several constraints that must be considered when preparing
such images.

First, the separate images need to be aligned. Unfortunately, ImageJ
does not yet have the ability to superimpose layers that could be moved
independently, as in Photoshop. On the other hand, there is a
registration plugin available that allows either manual or automatic
alignment prior to image assembly.

Second, it is important that the intensity distribution in each of the
images be within the 8-bit dynamic range. This avoids oversaturation in
the final image.

Third, it should be realized that images such as these are transforms
from the original data. Each color channel activates a single type of
pixel in the display. As a result, some of the subtlety of imaging is
lost. DAPI, for instance has a significant fluorescence in the green
wavelengths, which is lost with this kind of image, but might be
retained in a color original.

## Author:

**Joel B. Sheffield**

Department of Biology

Temple University

Philadelphia PA 19122
