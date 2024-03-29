# Alpha Channel

Creates transparent overlays from pasted images or the result of a
filter operation.

## Introduction

This ImageJ plugin filter applies an Alpha Channel immediately after a
paste or filter operation. The output is a blend of the original and the
result of the filter/paste operation preceding the call of this plugin,
with the weight of the filtered/pasted image given by an \'alpha
channel\' image.

After running \'Alpha Channel\', what looks like a transparent overlay
is actually part of the image and not a separate layer!

![Alpha Channel
Example](/plugin/utilities/alpha_channel/alpha_channel_example.jpg)\
*Note that one could also use an alpha channel image with sharp edges
(binary image) and create the soft edges by a nonzero value of \'Smooth
Radius\'*

## Dialog Parameters

-   The **Alpha Channel** image must have the same size as the current
    image and be either an 8-bit or a float (32-bit) image. A pixel
    value of 0 reverts to the unfiltered/unpasted state; a pixel value
    equal to \'Range\' keeps the result of the last filter/paste
    operation. Values in between result in a weighted average of the two
    image states.

```{=html}
<!-- -->
```
-   **Range of Alpha Channel** defines the range of the alpha channel
    pixels (not taking any value calibration into account). In other
    words, the filtered/pasted image is transparent if the alpha channel
    is 0 and fully opaque if the alpha channel is 100% of \'range\'. Use
    a range larger than the actual pixel range to make the
    filtered/pasted image transparent even in places where the alpha
    channel reaches its maximum value.

The alpha channel can be modified before applying it:

-   **Enlarge by** increases the area by up to 20 pixels. Enter a
    negative number to shrink it. See [Process\>Filters\>Show Circular
    Masks](/gui/process/filters#show_circular_masks) for the kernel
    sizes as a function of this value.

```{=html}
<!-- -->
```
-   **Smooth Radius** is the radius (standard deviation) of a Gaussian
    blur filter applied to the alpha channel.

```{=html}
<!-- -->
```
-   Use **Preview** to examine the outcome of the operation.

## Notes

-   Use this plugin immediately after the filter or paste operation.
-   When using this plugin, it is advisable to have the \"Keep multiple
    undo buffers\" option enabled in Edit\>Options\>Memory & Threads.
    Otherwise it can happen too easily that the undo buffer (where the
    previous version of the image is stored) becomes lost, e.g. if you
    bring the alpha channel or any other image to the foreground before
    running this plugin. If this happens, the plugin won\'t work any
    more.
-   After running this plugin, undo still reverts to the state before
    the previous filter or paste operation.

## Usage

-   Copy
    ![Alpha_Channel.java](/plugin/utilities/alpha_channel/alpha_channel_v2.java)
    into the ImageJ plugins folder or a subfolder thereof. Make sure
    that you name the downloaded file "Alpha_Channel.java";
    uppercase/lowercase matters.

```{=html}
<!-- -->
```
-   Compile with "Compile and run".

## Changelog

-   2008-Dec-05 V 1.0 First Version (still
    ![available](/plugin/utilities/alpha_channel/alpha_channel.java))
-   2013-Jun-25 V 2.0 No \'deprecation or override\' warnings,
    enlarge/shrink range extended to 50 pxl. Needs ImageJ 1.47a or
    later.

\-\-- *[Michael Schmid](/users/schmid) 2008/12/05 19:35*
