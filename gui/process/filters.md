# Filters

**What do the filters in the filters sub-menu do?**

This submenu contains miscellaneous filters and plugin filters that have
been installed by the *Plugins/Utilities/Install Plugin* command. For
more information, refer to the Hypermedia Image Processing Reference at
<http://www.dai.ed.ac.uk/HIPR2/>. Click on
[Index](http://www.dai.ed.ac.uk/HIPR2/index.htm) and look up the
keywords convolution, Gaussian, median, mean, erode, dilate and unsharp.

### Convolve\...

Does spatial convolution using a kernel entered into a text area. A
kernel is a matrix whose center corresponds to the source pixel and the
other elements correspond to neighboring pixels. The destination pixel
is calculated by multiplying each source pixel by its corresponding
kernel coefficient and adding the results. There is no arbitrary limit
to the size of the kernel but it must be square and have an odd width.

![](http://rsb.info.nih.gov/ij/docs/images/convolver.gif){.align-center}

Rows in the text area must all have the same number of coefficients, the
rows must be terminated with a carriage return, and the coefficients
must be separated by one or more spaces. Kernels can be pasted into the
text area using the control-V keyboard shortcut. Checking *Normalize
Kernel* causes each coefficient to be divided by the sum of the
coefficients, preserving image brightness.

The kernel shown is a 9 x 9 \"Mexican hat\", which does both smoothing
and edge detection in one operation. Note that kernels can be saved in a
text file (using copy (control-C) and paste), displayed as an image
using *File/Import/As Text Image*, scaled to a reasonable size using
*Image/Adjust/Size*, and plotted using the Surface Plot plugin.

### Gaussian Blur\...

This filter uses convolution with a Gaussian function for smoothing.\
**Sigma (Radius)** is the radius of decay to exp(-0.5) \~ 61%, i.e. the
standard deviation of the Gaussian (this is the same as in Photoshop,
but different from ImageJ versions till 1.38q, where a value 2.5 times
as much had to be entered).\
\
Like all ImageJ convolution operations, it assumes that out-of-image
pixels have a value equal to the nearest edge pixel. This gives higher
weight to edge pixels than pixels inside the image, and higher weight to
corner pixels than non-corner pixels at the edge. Thus, when smoothing
with very large blur radius, the output will be dominated by the edge
pixels and especially the corner pixels (in the extreme case, with a
blur radius of e.g. 1e20, the image will be raplaced by the average of
the four corner pixels).\
\
For increased speed, except for small blur radii, the lines (rows or
columns of the image) are downscaled before convolution and upscaled to
their original length thereafter.\
\
The faster and more accurate version of Gaussian Blur in ImageJ 1.38r
and later was contributed by Michael Schmid.

### Median\...

Reduces noise in the active image by replacing each pixel with the
median of the neighboring pixel values.

### Mean\...

Smooths the current image by replacing each pixel with the neighborhood
mean. The size of the neighborhood is specified by entering its radius
in a dialog box.

### Minimum\...

This filter does grayscale erosion by replacing each pixel in the image
with the smallest pixel value in that pixel\'s neighborhood.

### Maximum\...

This filter does grayscale dilation by replacing each pixel in the image
with the largest pixel value in that pixel\'s neighborhood.

### Unsharp Mask\...

Sharpens and enhances edges by subtracting a blurred version of the
image (the unsharp mask) from the original. The unsharp mask is created
by Gaussian blurring the original image and then multiplying by the
\"Mask Weight\" parameter. Increase the Guassian blur radius sigma to
increase contrast and increase the \"Mask Weight\" value for additional
edge enhancement (as for *Process/Filters/Gaussian Blur*, the \"Gaussian
Radius\" entered in imageJ versions till 1.38q was 2.5 times sigma).

### Variance\...

Heighlights edges in the image by replacing each pixel with the
neighborhood variance.

### Show Circular Masks

Generates a stack containing examples of the circular masks used by the
*Median*, *Mean*, *Minimum*, *Maximum* and *Variance* filters for
various neighborhood sizes.
