# Fast Filters

**A collection of fast filters (mean, min, max, median, background,
\...) working on a rectangular n\*m kernel (including unidirectional or
square n\*n kernels).**

## Description

This plugin is based on unidirectional filters (mean, min, max, median),
i.e. filters that can be applied to rows or columns in an image.
Filtering with a rectangular n\*m kernel area is obtained by
sequentially filtering rows and columns (\"separable filters\"). Some of
the processing capabilities are similar to these in built-in ImageJ
Process\>Filters, which are working on a circular kernel area (in most
cases, a circular kernel is desirable, but slower).

The plugin also uses combinations of the filters, e.g. for background
removal.

## Filter types

![Fast Filters
examples](/plugin/filter/fast_filters/fastfilters-samples.png)\
*Examples (inverted LUT, high values are dark): Note the differences at
the left border between unidirectional \"mean\" and \"border-limited
mean\" filtering. All other examples have a square kernel (x Radius=5, y
Radius=5). r=5 is insufficient to remove the large blobs in \"eliminate
maxima\", thus it is also insufficient for \"background from minima\".*

**Mean**: Average over n\*m pixels, where out-of-image pixels are
replaced by nearest border pixel. For large kerner sizes (radii), this
gives high weight to the border pixels.

**Border-limited mean**: Average over n\*m pixels; in contrast to most
ImageJ filters, out-of-image pixels are not replaced by border pixels
but rather the area for averaging is reduced at the border. This reduces
the weight of the border pixels to the same value as that of interior
pixels. In contrast to the standard \"mean\" algorithm, noise or
outliers at the very border do not strongly influence the result (this
would be a problem especially at high values of the radius). On the
other hand, objects that are close to the image border, but do not touch
it, become distorted with \"border-limited mean\" while remaining
undistorted with the standard \"mean\" algorithm.

**Median**: For unidirectional filters (i.e., with one of the radii = 0)
the pixel is replaced by the median of the pixels within a distance of
(x or y-)radius. For 2D filters (i.e., if both x and y radii are \>0), a
fast, but rough approximation to the median in a rectangular surrounding
is used (\"pseudo median\"): First a median filter is applied in x
direction, then in y direction. In contrast to the ImageJ built-in
median, the weight of border pixels is the same as that of inner pixels
(at the border, the median takes fewer values into account).

In contrast to most ImageJ filters, out-of-image pixels are not replaced
by border pixels but rather the area for median determination is reduced
at the border.

**Minimum**: Minimum over n\*m pixels.

**Maximum**: Maximum over n\*m pixels.

**Eliminate maxima**: Runs \"minimum\" and \"maximum\" filters in
succession. This eliminates maxima smaller than the kernel. This
operation is also known as morphological opening (assuming that maxima
are foreground objects).

**Eliminate minima**: Runs \"maximum\" and \"minimum\" filters in
succession. This eliminates minima smaller than the kernel. Also known
as morphological closing (assuming that maxima are foreground objects).

**Background from minima**: eliminates maxima (see above) and smoothens
the result (border-limited mean).

**Background from maxima**: eliminates minima (see above) and smoothens
the result (border-limited mean).

**Background from median**: runs a median (median approximation for 2D
filtering, see above), then smoothens the result (border-limited mean).

## Further filter parameters

![Fast Filters
Dialog](/plugin/filter/fast_filters/fast_filters_dialog.png)

**x Radius** and **y Radius** determine the kernel area of the filters
(in pixels, irrespective of any spatial calibration of the image).

For each target (output) pixel, the simple operations (mean, min, max)
are performed over a neighborhood given by a rectangle of width =
2\*xRadius+1 and height = 2\*yRadius+1. x Radius = 0 or y Radius=0
results in no filter operation in that direction.

For example, a \"mean\" filter with x Radius = 2 and y Radius = 0 will
replace each row of the image with [moving
averages](http://en.wikipedia.org/wiki/Moving_average) over 5 pixels in
that row. A \"mean\" filter with x Radius = 2 and y Radius = 2 results
in averaging over 5\*5 pixels.

Check **Link x & y** if a square kernel area (x radius = y radius) is
desired.

**Preprocessing** is an operation applied before all others. It can be
\"none\", \"smooth\" or \"median\". For unidirectinal filtering (y
radius = 0 or x radius = 0), preprocessing is also unidirectional: the
kernel size for unidirectional preprocessing is 5x1 or 1x5 pixels.

If both x and y radii are \>0, preprocessing uses a 3x3-pixel kernel for
averaging or the (approximated) median.

Preprocessing helps to eliminate outliers for the \"minimum\",
\"maximum\" and related filters.

**Subtract Filtered** does not output the result of the filter operation
above, but rather the original (input) image minus the result of the
filter operation, plus an offset. With \"mean\" filters, \"Subtract
Filtered\" results in a high-pass filter; with \"median\" it highlights
outliers. With the \"minimum\" and \"maximum\" filters, \"Subtract
Filtered\" is a kind of edge detection, and with the other filters it
provides various types of background subtraction. Especially the
\"Background from minima\" and \"Background from maxima\" filters are
suitable for background subtraction in images with particles: Make sure
that xRadius and yRadius are large enough to eliminate any particles
(use preview without \"Subtract Filtered\", then apply the filter with
\"Subtract Filtered\").

**Offset** is added to the data when subtracting a filtered image from
the original one. The offset is needed except for 32-bit float images to
keep the result in the range of the image type, e.g. 0-255 for 8-bit
grayscale and 8-bit/channel RGB. Use a low value (e.g., 10) for
subtracting \"background from minima\", high values (e.g. 245) for
subtracting \"background from maxima\".

## Notes

-   All operations are performed on raw pixel values, not taking any
    grayscale calibration into account.
-   This plugin provides a \'top hat\' filter with \"Eliminate Maxima\"
    or \"Eliminate Minima\", and the \"Subtract Filtered\" option
    enabled. When using \"Background from maxima\", set a suitable
    offset, i.e., 255 for 8-bit and RGB, and the maximum of the image
    data range for 16-bit images (65535, or, e.g., 4095 if your data are
    limited to 12 bits).
-   The top-hat filter is also handy as a fast alternative to filtering
    16-bit images with the ImageJ built-in \"Subtract Background\"
    command with the traditional algorithm (rolling ball, not sliding
    paraboloid) and produces similar results (especially for large pixel
    value ranges), but the \"Background from minima\" and \"Background
    from maxima\" filters usually produce better results (smoother
    background).
-   The new (Apr 2010) version handles NaN (not a number) pixels of
    float images as if there were no data for this pixel, only the
    non-NaN pixels within the kernel (surrounding of size x Radius, y
    Radius) are taken into account when calculating the mean, min, max
    or median.

## Version History

-   2008-11-21 Michael Schmid -- Code released (![still
    available](/plugin/filter/fast_filters/fast_filters_v10.java))
-   2010-04-16 Michael Schmid -- Parallel threads for multiprocessor
    machines, proper handling of NaN pixels

## Usage

-   Copy
    ![Fast_Filters.java](/plugin/filter/fast_filters/Fast_Filters.java)
    into the ImageJ plugins folder or a subfolder thereof (make sure you
    name the downloaded file \"`Fast_Filters.java`\";
    uppercase/lowercase matters).
-   Compile with \"Compile and run\".
-   Fiji Users: There is currently (2015) a bug in \"Compile and run\".
    Download
    ![Fast_Filters.class](/plugin/filter/fast_filters/fast_filters.class)
    and
    ![Fast_Filters\$1.class](/plugin/filter/fast_filters/fast_filters_1.class),
    rename them correctly (uppercase first cahracters, insert \'\$\')
    and put them into the ImageJ plugins folder or a subfolder thereof.

\-\-- *[Michael Schmid](/users/schmid) 2008/11/22 12:14*
