# Lookup Tables

**This submenu contains a selection of color lookup tables.**

### Invert LUT

Inverts the current lookup table. For 8-bit images, the value (v) of
each entry in the table is replaced by 255-v. With inverted LUTs, pixels
with a value of zero are white and pixels with a value 255 are black.
Unlike the **Edit\>Invert** command, pixels values are not altered, only
the way the image is displayed on the screen.

### Apply LUT

Applies the current lookup table function to each pixel in the image or
selection and restores the default identity function. This modifies the
gray values so that when the image is viewed using the default grayscale
lookup table it will look the same as it did before. This command is
equivalent to clicking on \"Apply\" in
**Image\>Adjust\>Brightness\>Contrast**. For thresholded images, it is
equivalent to clicking on \"Apply\" in **Image\>Adjust\>Threshold**.

The submenu contains a selection of color lookup tables that can be
applied to grayscale images to produce false-color images. If no image
is open, a 256x32 ramp image is created to display the color table.

![LUTs](/gui/image/luts.png)\
*The built-in LUTs.*

Lookup tables in the *ImageJ/luts* folder are added to the Image/Lookup
Tables menu, below the built in ones.

More than 100 additional lookup tables are available at
rsb.info.nih.gov/ij/download/luts/. They are also available as a ZIP
archive at rsb.info.nih.gov/ij/download/luts/luts.zip
