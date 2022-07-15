# Gels

**Use the commands in this submenu to analyze one-dimensional
electrophoretic gels.**

These commands are similar to the Gel Plotting Macros distributed with
NIH Image.

Both use a simple graphical method that involves generating lane profile
plots, drawing lines to enclose peaks of interest, and then measuring
peak areas using the wand tool.

\[insert image Gel\]

Here is what you need to do to analyse a 1-D gel:

1.  Use the rectangular selection tool to outline the first lane. This
    should be the left most lane if the lanes are vertical or the top
    lane if the lanes are horizontal. Note that lanes are assummed to be
    vertical unless the width of the initial selection is at least twice
    its height.
2.  Select **Analyze\>Gels\>Select First Lane** (or press \"1\") and
    \"Lane 1 selected\" will be displayed in the status bar. ImageJ will
    also duplicate the image and outline and label the lane if \"Outline
    Lanes\" is checked in the **Analyze\>Gels\>Gel Analyzer Options**.
3.  Move the rectangular selection right to the next lane (or down if
    the lanes are horizontal) and select **Analyze\>Gels\>Select Next
    Lane** (or press \"2\"). \"Lane 2 selected\" will be displayed in
    the status bar. ImageJ will also outline and label the lane if
    \"**Outline Lanes**\" is checked.
4.  Repeat the previous step for each remaining lane.
5.  Select **Analyze\>Gels\>Plot Lanes** (or press \"3\") to generate
    the lane profile plots.
6.  Use the straight line selection tool to draw base lines and/or drop
    lines so that each peak of interest defines a closed area. To get to
    all the lanes, it may be necessary to scroll the image vertically
    using the \"Hand\" tool. (Hold down the **space bar** to temporarily
    switch to this tool).
7.  For each peak, measure the size by clicking inside with the wand
    tool. If necessary, scroll the image by holding down the shift key
    and dragging.
8.  Select **Analyze\>Gels\>Label Peaks** to label each measured peak
    with its size as a percent of the total size of the measured peaks.

Added in v. 1.38n: **Re-plot Lanes** and **Draw Lane Outlines** commands
and enabled \"**Invert Peaks**\" in the Gel Analyze Options dialog by
default.

For practice, a sample gel is available in the **File\>Sample Images**
submenu. A tutorial is also available \[insert link here\] that shows
how to use this procedure to analyze a dot blot.
