# Subtract background

**What does the subtract background command do?**

Removes smooth continuous backgrounds from gels and other images. Based
on the a \"rolling ball\" algorithm described in Stanley Sternberg\'s
article, \"Biomedical Image Processing\", IEEE Computer, January 1983.
Imagine a 3D surface with the pixel values of the image being the
height, then a ball rolling over the back side of the surface creates
the background. The current algorithm (since version 1.39f) uses an
approximation of a paraboloid of rotation instead of a ball.

-   The **Rolling Ball Radius** is the radius of curvature of the
    paraboloid. As a rule of thumb, for 8-bit or RGB images it should be
    at least as large as the radius of the largest object in the image
    that is not part of the background. Larger values will also work
    unless the background of the image is too uneven. For images with
    pixel values having a very different range, note that the radius
    should be *inversely* proportional to the pixel value range. E.g.,
    typical values of the radius are around 0.2 to 5 for 16-bit images
    (pixel values 0\...65535).

```{=html}
<!-- -->
```
-   The **Light Background** option allows the processing of images with
    bright background and dark objects.

```{=html}
<!-- -->
```
-   With the **Create Background** option, the output is not the image
    with the background subtracted but rather the background itself.
    This option is useful for examining the background created (in
    conjunction with the **Preview** option). \"Create Background\" can
    be also used for custom background subtraction algorithms where the
    image is duplicated and filtered (e.g. removing \"holes\" in the
    background) before creating the background and finally subtracting
    it with **Process \> Image Calculator**.

```{=html}
<!-- -->
```
-   For calculating the background (\"rolling the ball\"), images are
    normally smoothened to reduce noise (average over 3x3 pixels). With
    **Disable Smoothing**, the unmodified image data are used for
    creating the background. Check this option to make sure that the
    image data after subtraction will never be below the background.

![\[Example\]](/gui/process/subtract-background-example.jpg){.align-center}
