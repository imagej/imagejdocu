# Set Scale\...

**Use this dialog to define the spatial scale of the active image.**

Use this dialog to define the spatial scale of the active image so
measurement results can be presented in calibrated units, such as
millimeters.

Before using this command, use the straight line selection tool to make
a line selection that corresponds to a known distance. Then, bring up
the **Set Scale** dialog, enter the known distance and unit of
measurement, then click OK. ImageJ will have automatically filled in the
**Distance in Pixels** field based on the length of the line selection.

![\[Set Scale\... Dialog\]](/gui/analyze/set_scale.jpg){.align-center}

Set **Distance in Pixels** to zero to revert to pixel measurements.

Setting **Pixel Aspect Ratio** to a value other than 1.0 enables support
for different horizontal and vertical spatial scales, for example 100
pixels/cm horizontally and 95 pixels/cm vertically.

To set the pixel aspect ratio, measure the width and height (in pixels)
of a digitized object with a known 1:1 aspect ratio. Enter the measured
width (in pixels) in **Distance in Pixels**. Enter the known width in
**Known Distance**. Then calculate the aspect ratio by dividing the
width by the height and enter it in **Pixel Aspect Ratio**.

When **Global** is checked, the scale defined in this dialog is used for
all images instead of just the active image. When global calibration is
on, `(G)` is added to the title bars of image windows.

**Unscale** resets **Distance in Pixels** field and sets the units to
**pixel**.

Two examples of how to use the **Set Scale** command are available:
[Area Measurements (PDF; see page
2)](http://rsb.info.nih.gov/ij/docs/pdfs/examples.pdf) and [DNA Contour
Length
Measurement](http://rsb.info.nih.gov/ij/docs/examples/dna-contours/index.html).
