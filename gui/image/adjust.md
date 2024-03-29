# Adjust

**This submenu contains commands that adjust brightness/contrast,
window/level, color balance, threshold levels and image/canvas size.**

### Brightness/Contrast\...

Use this tool to interactively alter the brightness and contrast of the
active image. With 8-bit images, brightness and contrast are changed by
updating the image\'s look-up table (LUT), so pixel values are unchanged
until the \"Apply\" button is pressed. With 16-bit and 32-bit images,
the display is updated by changing the mapping from pixel values to
8-bit display values, so pixel pixel values are also unchanged.
Brightness and contrast of RGB images are changed by modifying the pixel
values.

Press shift-c to open the B&C window the quick and easy way. If it is
already open, it is activated.

![B&C panel](http://rsb.info.nih.gov/ij/docs/images/adjuster.jpg)

The line graph at the top of the window, which us superimposed on the
image\'s histogram, shows how pixel values are mapped to 8-bit (0-255)
display values. The two numbers under the plot are the minimum and
maximum displayed pixel values. These two values define the display
range, or \"window\". ImageJ displays images by linearly mapping pixel
values in the display range to display values in the range 0-255. Pixels
with a value less than the minimum are displayed as black and those with
a value greater than the maximum are displayed as white.\
There are four sliders. **Minimum** and **Maximum** control the lower
and upper limits of the display range. **Brightness** increases or
decreases image brightness by moving the display range. **Contrast**
increases or decreases contrast by varying the width of the display
range. The narrower the display range, the higher the contrast.

Click on **Auto**, and ImageJ will automatically optimizes brightness
and contrast based on an analysis of the image\'s histogram. Create a
selection, and the entire image will be optimized based on an analysis
of the selection. The optimization is done by allowing a small
percentage of pixels in the the image to become saturated (displayed as
black or white). Each additional click on Auto increases the number of
saturated pixels and thus the amount of optimization.

Click on **Reset** to restore the original brightness and contrast
settings. The display range is set to the full pixel value range of the
image. A resetMinAndMax() macro call is generated if the command
recorder is running.

Click on **Set** to enter the minimum and maximum display range values
in a dialog box. A setMinAndMax() macro call is generated if the command
recorder is running. Check **Propagate to all open images** to apply
these values to the rest of the images currently open.

![Min Max
Dialog](http://rsb.info.nih.gov/ij/docs/images/set-min-max.jpg)

Click on **Apply** to apply the current display range mapping function
to the pixel data. If there is a selection, only pixels within the
selection are modified. This option currently only works with 8-bit
images and stacks and with RGB stacks. This is the only B&C option that
alters the pixel data of non-RGB images. For composite images it
propagates the current image\'s display range to the other channels.

### Window/Level

This command interactively alters the window (range of minimum and
maximum) and level (position of that range in the greyscale intensity
space) of the active image

Click on **Auto**, and ImageJ will automatically optimizes window and
level based on an analysis of the image\'s histogram. Create a
selection, and the entire image will be optimized based on an analysis
of the selection. The optimization is done by allowing a small
percentage of pixels in the the image to become saturated (displayed as
black or white). Each additional click on Auto increases the number of
saturated pixels and thus the amount of optimization.

Click on **Reset** to restore the original brightness and contrast
settings. The display range is set to the full pixel value range of the
image. A resetMinAndMax() macro call is generated if the command
recorder is running.

Click on **Set** to enter the window level (center) and width values in
a dialog box. A setMinAndMax() macro call is generated if the command
recorder is running. Check **Propagate to all open images** to apply
these values to the rest of the images currently open.

For 8-bit images (8-bit grayscale, RGB images or stacks), click
**Apply** to modify the image data to reflect the current settings.

### Color Balance\...

This panel makes adjustments to the brightness and contrast of a single
color of a standard RGB image (8 bits per color channel). Use the
selection to specify which color will be adjusted; the histogram is
drawn for the color selected. (For 48-bit color images that load as a
stack, also the **Image\>Adjust\>Brightness/Contrast** tool works on
single stack slices, i.e., colors, and the color settings of the Color
Balance panel are ignored).

The sliders **Minimum** and **Maximum** control the lower and upper
limits of the display range. **Brightness** increases or decreases image
brightness by moving the display range.

Click on **Auto**, and ImageJ will automatically optimize brightness and
contrast of the color selected based on an analysis of the image\'s
histogram. Repeated clicking on Auto narrows down the display range,
i.e. increases contrast and color saturation.

**Reset** reverts the display range to 0-255 for images with 8 bits per
channel or the full display range for 16-bit and 32-bit images.

Click on **Set** to enter the minimum and maximum display range values
in a dialog box. Check **Propagate to all open images** to apply these
values to the rest of the images currently open.

For 8-bit images (8-bit grayscale, RGB images or stacks), click
**Apply** to modify the image data to reflect the current settings. When
switching from one color to another, the changes made to one color will
be lost unless Apply is clicked before.

### Threshold\...

Use this tool to interactively set lower and upper threshold values,
segmenting the image into features of interest and background. Pixels
with brightness values greater than or equal to the lower threshold and
less than or equal to the upper threshold are displayed in red. Use
**Analyze\>Measure** (with \"Limit to Threshold\" in **Analyze\>Set
Measurements** checked) to measure the aggregate of the selected
features. Use **Analyze\>Analyze Particles** to measure features
individually. Use the wand tool to outline a single feature.\
Use the upper slider to adjust the minimum threshold value and the lower
one to adjust the maximum. Hold the Alt key down while adjusting the
minimum to move a fixed-width thresholding window across the range of
gray values (similar to Level, above).\
The **Auto** button automatically sets the threshold levels based on an
analysis of the histogram of the current image or selection. **Apply**
sets thresholded pixels to black and all other pixels to white. However
if **Process\>Binary\>Options\>Black Background** is checked, the
thresholded pixels are set to white and all other pixels to black.
**Reset** disables thresholding and updates the histogram.

\*\*Red \*\*shows the thresholded values in red. **Black & White**
switches to a mode where features are displayed in black and background
in white, while **Over/Unde**r shows pixels in blue (lower than the low
threshold) or in grey (larger than the maximum threshold value). Click
on Set to enter new threshold levels into a dialog box.

### Size\...

Scales the active image or selection to a specified width and height in
pixels.\
Check **Constrain Aspect Ratio** to create an image with the specified
**Width** and have ImageJ adjust the **Height** to maintain the original
aspect ratio.\
Check **Interpolate** to use bilinear interpolation. Set the new
**Width** to 0 to create an image with the specified height and have
ImageJ adjust the width to maintain the original aspect ratio.

### Canvas Size\...

Changes the canvas size of an image or stack without scaling the actual
image. The **Width** and **Height** may be either expanded or
contracted. If the canvas size is increased, then the border is filled
with the current background color. Or, if **Zero Fill** is checked, the
border is filled with pixels that have a value of zero. Use the
**Image\>Color\>Color Picker** tool to change the background color. The
position of the old image within the new canvas may also be specified
(Center, Top Left, etc.).

![Canvas Size
panel](http://rsb.info.nih.gov/ij/docs/images/canvas-size.jpg)
