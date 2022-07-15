# Measure

**What does the Measure command do?**

Based on the selection type, the Measure command calculates and displays
area statistics, line lengths and angles, or point coordinates. The
types of measurements performed for any selection type can be selected
in **Analyze\>[set_measurements](/gui/analyze/set_measurements)**.
Results are calculated for the complete image if there is no selection.

In addition to the list of measurements defined in **Analyze\>Set
Measurements**, for the three types of **line selections** (straight,
segmented, freehand) // line length *and* angle// (straight lines only)
are calculated. Values like *mean*, *min*, etc. are calculated for the
pixels along the line.

For **point selections**, the coordinates X and Y are recoded. Note that
\"Measure\" will paint the point(s) of a point selection in foreground
color unless you set \"Mark Width\" in the Point Tool options to zero
(double-click the Point Tool icon in the Toolbar). This will destroy the
original image, so work on a copy!

For RGB images, results are calculated using brightness values. RGB
pixels are converted to brightness values using the formula V=(R+G+B)/3,
or V=0.299R+0.587G+0.114B if \"Weighted RGB Conversions\" is checked in
Edit\>Option\>Conversions. The default weighting factors are the ones
used to convert to from RGB to YUV, the color encoding system used for
analog television. The weighting factors can be changed using the
setRGBWeights macro function.

![Results Table created by
\"Measure\"](http://rsb.info.nih.gov/ij/docs/images/measure.gif)

To export the measurements as a tab-delimited text file, select
**File\>Save As\>Measurements** from the ImageJ menu bar or **File\>Save
As** from the \"Results\" window menu bar. Copy the measurements to the
clipboard by selecting\*\* Edit\>Copy All \*\*from the \"Results\"
window menu bar. You can also save measurements by right-clicking in the
Results window and selecting **Save As** or **Copy All** from the popup
menu.

The width of the columns in the \"Results\" window can be adjusted by
clicking on and dragging the vertical lines that separate the column
headings. The numerical accuracy (number of digits) displayed can be
specified in **Analyze\>Set Measurements**.
