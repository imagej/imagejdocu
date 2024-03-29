# Set Measurements\...

**Use this dialog box to specify which measurements are recorded by
Analyze/Measure and Analyze/Analyze Particles.**

![Set Measurements
Dialog](http://rsb.info.nih.gov/ij/docs/images/measurements.jpg)

**Area** - Area of selection in square pixels. **Area** is in calibrated
units, such as square millimeters, if **Analyze\>Set Scale** was used to
spatially calibrate the image.

**Mean Gray Value** - Average gray value within the selection. This is
the sum of the gray values of all the pixels in the selection divided by
the number of pixels. Reported in calibrated units (e.g., optical
density) if **Analyze\>Calibrate** was used to calibrate the image. For
RGB images, the mean is calulated by converting each pixel to grayscale
using the formula gray=0.299\*red+0.587\*green+0.114\*blue if
\"**Weighted RGB Conversion**\" is checked in
**Edit\>Options\>Conversions**. or the formula gray=(red+green+blue)/3
if not checked.

**Standard Deviation** - Standard deviation of the gray values used to
generate the mean gray value.

**Modal Gray Value** - Most frequently occurring gray value within the
selection. Corresponds to the highest peak in the histogram.

**Min & Max Gray Value** - Minimum and maximum gray values within the
selection.

**Centroid** - The center point of the selection. This is the average of
the x and y coordinates of all of the pixels in the selection.

**Center of Mass** - This is the brightness-weighted average of the x
and y coordinates all pixels in the selection.

**Perimeter** - The length of the outside boundary of the selection.

**Bounding Rectangle** - The smallest rectangle enclosing the selection.
Uses the headings BX, BY, Width and Height, where BX and BY are the
coordinates of the upper left corner of the rectangle.

**Fit Ellipse** - Fit an ellipse to the selection. Uses the headings
Major, Minor and Angle. Major and Minor are the primary and seconday
axis of the best fitting ellipse.

**Angle** is the angle between the primary axis and a line parallel to
the x-axis of the image. Note that ImageJ cannot calculate the major and
minor axis lengths if Pixel Aspect Ratio in the Set Scale dialog is not
1.0.

**Circularity** - 4pi(area/perimeter\^2). A value of 1.0 indicates a
perfect circle. As the value approaches 0.0, it indicates an
increasingly elongated polygon. Values may not be valid for very small
particles. For small particles, the circularity can be \>1 (due to the
definition of perimeter and area in a square grid). In those cases the
value of 1.0 is returned (before v1.37 this was set as -1.0).

**Feret\'s Diameter** - The longest distance between any two points
along the selection boundary. Also known as the caliper length. The
Feret\'s Diameter macro will draw the Feret\'s Diameter of the current
selection on the image.

**Integrated Density** - The sum of the values of the pixels in the
image or selection. This is equavalent to the product of Area and Mean
Gray Value. The Dot Blot Analysis example demonstrates how to use this
option to analyze a dot blot assay.

\*\*Median \*\*- The median value of the pixels in the image or
selection.

**Skewness** - The third order moment about the mean. The documentation
for the Moment Calculator plugin explains how to interpret spatial
moments.

**Kurtosis** - The fourth order moment about the mean.

**Area Fraction** - The percentage of pixels in the image or selection
that have been highlighted in red using Image/Adjust/Threshold. For
non-thresholded images, the percentage of non-zero pixels.

**Limit to Threshold** - If checked, only thresholded pixels are
included in measurement calculations. Use **Image\>Adjust\>Threshold**
to set the threshold limits.

**Display Label** - If checked, the image name and slice number (for
stacks) are recoded in the first column of the results table.

**Invert Y Coordinates** - If checked, the XY origin is assumed to be
the lower left corner of the image window instead of the upper left
corner.

**Redirect To** - The image selected from this popup menu will be used
as the target for statistical calculations done by the **Measure** and
**Analyze Particles** commands. The **Redirect To** feature allows you
to outline a structure on one image and measure the intensity of the
corresponding region in another image. With ImageJ 1.35d or later this
feature also works with stacks.

**Decimal Places** - This is the number of digits to the right of the
decimal point in real numbers displayed in the results table and in
histogram windows.
