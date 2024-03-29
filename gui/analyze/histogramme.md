# Histogram

**Calculates and displays a histogram of the distribution of gray values
in the active image or selection.**

The x-axis represents the possible gray values and the y-axis shows the
number of pixels found for each gray value. The total pixel **count** is
also calculated and displayed, as well as the **mean**, **modal**,
**minimum** and **maximum** gray value.

\[insert image Histogram\]

Use the \*\*List **button and** Save\*\* command to save the histogram
data. Click on **Log** to display a log-scaled version of the histogram.
The number to the right of **Value:**, which changes as you move the
cursor, is the grayscale value corresponding to the x-axis cursor
position and **Count:** is the number of pixels that have that value.

With RGB images, the histogram is calculated by converting each pixel to
grayscale using the formula

    gray = 0.299 * red + 0.587 * green + 0.114 * blue

or the formula

    gray = (red + green + blue) / 3

depending whether \"Weighted RGB Conversions\" is checked or not in
**Edit\>Options\>Conversions**.

With 16-bit images, the range of gray values between the Min and Max
values is divided into 256 bins.

With 32-bit images, the number of bins is specified in this dialog box:

\[insert image Dialog\]

Check **Use min/max** and the x-axis range is determined by the minimum
and maximum values in the image or selection, or specify **X Min** and
**X Max** values to fix the x-axes range. Enter a **Y Max** value to fix
the y-axis range or enter \"**Auto**\" to have the range determined by
the largest bin count.

In ImageJ 1.35a or later, hold down the **Alt** key (or press alt-h) to
use this dialog with 8-bit, 16-bit and RGB images.
