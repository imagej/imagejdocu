# Enhance contrast

**What does enhance contrast do?**

Enhances image contrast by using either histogram stretching or
histogram equalization. Both methods are described in detail in the
[Hypermedia Image Processing Reference](http://www.dai.ed.ac.uk/HIPR2/).
Look up \"enhancement\" in the
[index](http://www.dai.ed.ac.uk/HIPR2/index.htm). This command does not
alter pixel values as long as *Normalize* or *Equalize Histogram* are
not checked. The *Saturated Pixels* value determines the number of
pixels in the image that are allowed to become saturated. Increasing
this value will increase contrast. This value should be greater than
zero to prevent a few outlying pixel from causing the histogram stretch
to not work as intended.

Check *Normalize* and ImageJ will recalculate the pixel values of the
image so the range is equal to the maximum range for the data type, or
0-1.0 for float images. The maximum range is 0-255 for 8-bit images and
0-65535 for 16-bit images. Note that normalization of RGB images is not
supported.

Check *Equalize Histogram* to enhance the image using histogram
equalization. Create a selection and the equalization will be based on
the histogram of the selection. Uses a modified algorithm that takes the
square root of the histogram values. Hold the alt key down to use the
standard histogram equalization algorithm. The \"Saturated Pixels\" and
\"Normalize\" parameters are ignored when *Equalize Histogram* is
checked. The equalization code was contributed by Richard Kirk.
