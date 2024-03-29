# Fit_Polynomial

**Fits a polynomial of x&y to the image data, also subtracts the
polynomial as a background.**

# Description

This plugin-filter fits a polynomial of variable order to an image.

The selection (if any) determines the image area the polynomial is
fitted to. Output can be the polynomial fit or the image with the fit
subtracted. Output area is always the whole image, irrespective of the
selection.

**Dialog parameters**

-   The order of the polynomial can be selected separately for x, y and
    mixed terms. E.g. with orders 2, 3, and 2 for x, y, and xy,
    respectively, the polynomial will be *a + b\*x +
    c\*x\<sup\>2\</sup\> + d\*y + e\*y\<sup\>2\</sup\> +
    f\*y\<sup\>3\</sup\> + g\*xy* (note that the lowest-order mixed
    term, xy, has order 2).
-   \"Output Fit (Don\'t Subtract)\" determines whether the output
    should be the polynomial fit. If unchecked, the polynomial is
    subtracted from the image.
-   \"Shift Values to Display Range\" uses the mean value of the current
    display range, (max+min)/2, as zero for the subtracted output image.
    If unchecked, zero output corresponds to 128 for 8-bit and RGB,
    32768 for 16-bit and 0 for float images. This option has no effect
    if \"Output Fit (Don\'t Subtract)\" is checked.

For 8-bit and 16-bit images with no or linear calibration, the image
will be calibrated by shifting the zero value appropriately.

**Hints for usage**

-   To exclude particles or other foreground objects from the fit,
    select a threshold to include the background only, then run
    Edit\>Selection\>Create Selection to restrict the fit to the
    selection (i.e., to the background).
-   For subtracting the background of 8-bit, 16-bit and RGB images,
    saturation of the output can be avoided by setting
    \"Brightness&Contrast\" to such a values that desired background
    level is in the middle of the displayed range, and selecting \"Shift
    Values to Display Range\". Example: For an 8-bit image with
    background values around 30 and no significant area of foreground
    objects in the selection, it makes sense to set a display range of
    0-60 before running the filter, and check \"Shift Values to Display
    Range\".

## Restrictions

-   Undo will revert only the image contents, not the calibration.
-   In some cases (very high order of the polynomials and/or some
    non-rectangular selections), a \"Fit failed\" message may appear
    although the fit is mathematically possible. On the other hand, in
    some cases (some non-rectangular selections), it may run without a
    \"Fit failed\" message although there are not enough points for a
    unique solution with the given order of the polynomial.

## Installation

Download the sourcecode (file
![Fit_Polynomial.java](/plugin/filter/fit_polynomial/fit_polynomial.java)),
save it in the \"plugins\" folder or a subfolder thereof and compile it
with Plugins\>Compile and Run\... (make sure you name the downloaded
file "`Fit_Polynomial.java`"; uppercase/lowercase matters).

## License

The plugin is in the public domain.

\-\-- *[Michael Schmid](/users/schmid) 2008/09/30 15:19*
