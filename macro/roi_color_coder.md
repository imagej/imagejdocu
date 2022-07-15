# ROI Color Coder

Colorizes selections listed in the ROI Manager by matching measurements
to a color of a lookup table (LUT), generating particle-size heat maps.
It complements the `Analyze>Analyze Particles...` command. ROI Color
Coder is part of the [BAR](http://fiji.sc/BAR).

\<html\>

    &lt;div class=&quot;level1&quot; style=&quot;margin-bottom: 20px;&quot;&gt;
      &lt;b&gt;Keywords&lt;/b&gt; &amp;nbsp; Analyze particles, heat-map, lookup table, non-destructive image overlay, BAR
    &lt;/div&gt;

\</html\>

------------------------------------------------------------------------

#### Output

![blobs.gif in which the Area of segmented particles was matched to the
fire LUT (filled ROIs) and Feret lengths to a custom heat-map LUT
(contours)](/macro/roicolorcoderoutput.png){.align-center}

------------------------------------------------------------------------

#### Prompt

![Dialog prompt of ROI Color
Coder](/macro/rcc/roicolercoder05.png){.align-center}

------------------------------------------------------------------------

#### Requirements

ImageJ 1.46h or later. Use `Help>Update ImageJ...` to upgrade to a newer
version.

------------------------------------------------------------------------

#### Installation

1.  Subscribe to the [BAR update site](http://fiji.sc/BAR#Installation)
    in [Fiji](http://fiji.sc/). Alternatively, download the latest
    version of `ROI_Color_Coder.ijm` from
    [GitHub](https://github.com/tferr/Scripts/blob/master/Annotation/ROI_Color_Coder.ijm?raw=true)
    (direct link).
2.  Place the file in the `ImageJ/plugins/` or `Fiji.app/plugins/`
    folder (or subfolder).
3.  The command `ROI Color Coder` will be listed in the `Plugins>` menu
    after running `Help>Refresh Menus`.

------------------------------------------------------------------------

#### Tips

-   Rename your preferred LUTs in the `ImageJ/luts/` directory with a
    numeric prefix (e.g. \'00-Gold.lut\') to have them listed first in
    the LUT dropdown menu
-   Check \"Labels\" in the ROI Manager to toggle ROI labeling. Adjust
    ROI labels using the ROI Manager `More>>Labels...` command
-   Use the ROI Manager `Flatten [F]` command to obtain an RGB image
    with the overlay rendered as pixel data. The image overlay is also
    embedded when saving the image in PNG or JPEG format
    (`File>Save As>` submenu)
-   A zip folder containing several \'heat-map\' LUTs can be downloaded
    from the [ImageJ web
    site](http://rsb.info.nih.gov/ij/download/luts/luts.zip) (direct
    link)
-   You can easily customize lookup tables using the
    `Edit>Color>Edit LUT` command.
-   The
    [glasbey.lut](http://rsb.info.nih.gov/ij/download/luts/glasbey.lut)
    (direct link) can be used to colorize selections randomly (although
    other strategies would probably perform better in this task, e.g.,
    [RoisToOverlay.js](http://rsb.info.nih.gov/ij/macros/js/RoisToOverlay.js))
-   Once installed in the `Plugins` menu, ROI Color Coder can be called
    from other macros, e.g.:\<code\>run(\"ROI Color Coder\",
    \"measurement=Area lut=Ice width=10 opacity=80\");\</code\>
-   See [GitHub](https://github.com/tferr/Scripts/#scripts) for more
    details

\

------------------------------------------------------------------------

#### Change History

-   2014.01.31 v.5.1
    -   Added support for the Angstrom symbol
    -   Moved file to
        [GitHub](https://github.com/tferr/Scripts/#scripts)
-   2012.03.01 v.5
    -   Min value is no longer restricted to zero
    -   Legend is now fully customizable
-   2010.12.06 v.4
    -   Accepts all LUT files recognized by ImageJ (previous versions
        accepted only tab-delimited text LUT files)
    -   Fixed an issue caused by files without extension saved in the
        luts directory
-   2009.12.14 v.3
    -   Added options for transparency, contours width, ROI filling
    -   Results table is cleared and ROIs (re)measured if needed
-   2009.12.01 v.2
    -   Fixed labels misalignment in legend

\-\-- *[Tiago Ferreira](/users/tferreira) 2014/06/19 23:10*
