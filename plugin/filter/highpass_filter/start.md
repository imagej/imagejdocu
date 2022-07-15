# Highpass filter

**A plugin-filter providing a highpass command. It subtracts the
Gaussian blurred input image from the input image.**

## Dialog Options

![Screenshot of the High-pass
filter](/plugin/filter/highpass_filter/highpass-screenshot.jpg)

-   **Radius (Sigma)** is the standard deviation (blur length) of the
    Gaussian that will be subtracted.

```{=html}
<!-- -->
```
-   **Scaled Units** (spatially calibrated images only) should be
    selected if \"Radius (Sigma)\" is not in pixels but in physical
    units (e.g., micrometers).

```{=html}
<!-- -->
```
-   **Shift Values to Display Range** adds an offset so that the output
    will fit into the currently displayed data range. This option should
    be selected when processing only a selection of a 32-bit (float)
    image that does not have its pixel values around zero. This option
    is also useful for most 16-bit images.

```{=html}
<!-- -->
```
-   **Preview** is available with the Preview checkbox.

If \"Shift Values to Display Range\" is unchecked, the offset, i.e. the
output created by flat portions of the image, will be 0 for 32-bit
float, 32768 for 16-bit and 128 for 8-bit (grayscale or RGB) images.

## Pixel Value Calibration (8-bit & 16-bit images only)

If the full image is processed, for grayscale 8-bit and 16-bit images,
the grayscale (pixel value) calibration will be set to have zero value
at this level. Thus, one can use, e.g., Process\>Math\>Square after
high-pass filtering to highlight all pixels deviating from their
surrounding.

Note that Undo will revert only the image contents, not the calibration.

## Usage

-   Download the sourcecode (file
    ![High_pass.java](/plugin/filter/highpass_filter/high_pass.java)),
    put it into the ImageJ/plugins directory or an immediate
    subdirectory thereof. Make sure you name the downloaded file
    "`High_pass.java`"; uppercase/lowercase matters.
-   Compile it via Plugins\>Compile and Run\...
-   Alternatively, directly save the .class file
    ![High_pass.class](/plugin/filter/highpass_filter/high_pass.class)
    into the ImageJ/plugins directory or an immediate subdirectory
    thereof. Again, make sure that you name the file correctly,
    uppercase/lowercase matters.

\-\-- *[Michael Schmid](/users/schmid) 2007/06/28 15:12*
