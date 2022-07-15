# Adjustable Watershed

\*\* Watershed segmentation of the Euclidian Distance Map, similar to
[Process\>Binary\>Watershed](http://rsb.info.nih.gov/ij/docs/guide/146-29.html#sub:Watershed)
but with adjustable sensitivity and preview \*\*

## Basics

Watershed segmentation based on the EDM splits a particle if the EDM has
more than one maximum, i.e., if there are several largest inscribed
circles at different positions. Thus, it is best for segmenting
particles that roughly circular.

![Screenshot](/plugin/segmentation/adjustable_watershed/adjustable_watershed_screenshot.png)

## Dialog Options (Parameters)

\*\* Tolerance\*\*

-   This value determines the difference of radius between the smaller
    of the largest inscribed circles and a circle inscribed at the neck
    between the particles. The higher this value, the fewer segmentation
    lines. The standard ImageJ Process\>Binary\>Watershed algorithm uses
    a tolerance of 0.5. The value should not be much lower than this
    because low values tend to produce false segmentations, caused by
    the pixel quantization.

## Limitations

-   WARNING: With ImageJ versions 1.48t22 and before, it may remove
    small particles if the tolerance is larger than 1. This problem is
    fixed in ImageJ 1.48t23 (20-March-2014).
-   The plugin should not be used if particles can have inner holes. For
    such particles, unpredictable segmentation lines can occur or the
    particle may remain unsplit. To make sure you have no such
    particles, you may run \'fill holes\' before use and see whether
    anything changes.

## Usage

-   Copy
    ![Adjustable_Watershed.java](/plugin/segmentation/adjustable_watershed/adjustable_watershed.java)
    into the ImageJ plugins folder or a subfolder thereof. Make sure
    that you name the downloaded file "`Adjustable_Watershed.java`";
    uppercase/lowercase matters.
-   Compile with "Compile and Run" and press "OK".
-   Alternatively, directly save the .class file
    ![Adjustable_Watershed.class](/plugin/segmentation/adjustable_watershed/adjustable_watershed.class)
    into the ImageJ/plugins directory or an immediate subdirectory
    thereof. Again, make sure that you name the file correctly,
    uppercase/lowercase matters.
-   Use Help\>Update Menus or restart ImageJ to make it appear in the
    Plugins menu.
