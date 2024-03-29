# Versatile Wand Tool

\*\* An ImageJ magic wand \*\*

**Features:** Selectable tolerance, variable hue or grayscale preference
for RGB, gradient detection for grayscale, 4-connected, 8-connected or
non-contiguous operation and preview.

**See also:** The built in wand tool, which supports 4-conected and
8-connected mode and has a \'tolerance\' slider.

![Versative Wand Tool
screenshot](/plugin/segmentation/versatile_wand/versatilewandoptions.jpg){.align-center}

## Tool Options

![Versatile Wand Tool
icon](/plugin/segmentation/versatile_wand/versatilewandtool_icon.png){.align-left}Select
the options by right-clicking on the tool icon. If the Versatile Wand
tool has been used before, you will get a preview, showing how the
options affect the selection, with the position of the last click on an
image.

\*\* Value Tolerance\*\*

-   The selection is expanded to all image points as long as the
    difference between the pixel value of the point clicked and the
    image point is less than the Value Tolerance.
-   Value Tolerance is ignored for **thresholded** images; there the
    thresholded (red) area is selected instead. For 16-bit and float
    images, note that rounding errors occur, thus the red area displayed
    is only an approximation to the exact thresholded area. In contrast
    to the ImageJ wand, you must click *into* the thresholded area;
    clicking outside will create a beep.
-   For color images, see the color slider below.
-   The selection can be further restricted by the Gradient Tolerance.
-   For calibrated images, the Gray Value Tolerance is in calibrated
    units (e.g., \'lux\'); for color images, the gray level is used (See
    Edit\>Options\>Conversions for pixel weights)

**Color**

-   For RGB images, this slider determines the relative weight of the
    gray value and the color hue/saturation for the evaluation of the
    tolerance.
-   With a value of -100, only the gray value is taken into account
    (with weights of the color channels depending on the
    Edit\>Options\>Conversions\>Weighted RGB checkbox).
-   With a value of 0, the vector distance between the (unweighted) RGB
    vectors is used, and
-   with large values, mainly the difference of hue/saturation is taken
    into account, not so much the gray value.
-   Use a large value (\> 90) if you want to select a color with a large
    range for the brightness.

**Gradient Tolerance**

-   Irrespective of Value Tolerance, the selection is not expanded if
    the gray level gradient is larger than the Gradient Tolerance.
-   Gradient Tolerance is also active if a threshold is used instead of
    the Value Tolerance; in this case visual inspection is easier with
    the Threshold display in \'Over/Under\' mode.
-   Gradient detection is less sensitive to noise than in 4-connected
    mode than in 8-connected mode.
-   For calibrated images, the gradient tolerance is in calibrated
    units, e.g., \'lux/mm\'. For RGB images, gradient tolerance works on
    the gray value (brightness) only.

**Eyedropper Color**

-   Uses the current foreground color (color of the eyedropper tool) as
    reference color (or pixel value), instead of the pixel color (value)
    where the user has clicked.
-   In 4-connected and 8-connected mode (see \'connectedness\', below)
    the starting pixel is selected irrespective of its color (value). In
    non-contiguous mode, an empty selection may result if no pixel
    matches the eyedropper color within the tolerance.

```{=html}
<!-- -->
```
    * 

\*\* Connectedness\*\*

-   In **Eight-Connected** mode, the selection proceeds to neighboring
    pixels touching each other at a side or a corner.
-   **Four-Connected** means that the selection proceeds only to
    neighboring pixels sharing a side with the previous pixel.
-   **Non-Contiguous** mode selects all pixels of the image within the
    tolerance irrespective of connectedness.
-   In non-contiguous mode, the \'Gradient Tolerance\' and \'Include
    Holes\' options are ignored.

**Include Holes**

-   When checking this option, the selection created by this wand
    operation will not have interior holes. Nevertheless, holes may
    arise from combining/subtracting selections with the SHIFT or ALT
    keys; also edge holes may be present.

## Use in Macros

In Macros, you can call the Versatile Wand Tool using its static doWand
method. \<code\>

      call(&quot;Versatile_Wand_Tool.doWand&quot;, x, y, tolerance, colorSensitivity, gradientTolerance, &quot;options&quot;);

\</code\> If you don\'t need the `colorSensitivity` and
`gradientTolerance`, you can also use the shorter version \<code\>

      call(&quot;Versatile_Wand_Tool.doWand&quot;, x, y, tolerance, &quot;options&quot;);

\</code\> Enter the numbers or variables directly as arguments, not in
the notation for options of `run` commands (do not use `&x` etc.)\
The String `options` should contain the connectedness (`8-connected`,
`4-connected`, or `non-contiguous`) and it may contain the keywords
`eydropper` and `include`, for using the foreground color (eydropper
color), and for including holes, respectively.

You can also use Plugins\>Macros\>Record.

For adding to the current selection, precede the call by
`setKeyDown("shift");`\
For subtracting from the selection, use `setKeyDown("alt");`

## Installation

-   Copy
    ![Versatile_Wand_Tool.java](/plugin/segmentation/versatile_wand/versatile_wand_tool.java)
    into the ImageJ/plugins/Tools folder. Make sure that you name the
    downloaded file "`Versatile_Wand_Tool.java`"; uppercase/lowercase
    matters. Then use Compile&Run.
-   Alternatively, download
    ![Versatile_Wand_Tool.jar](/plugin/segmentation/versatile_wand/versatile_wand_tool.jar)
    and save it under ImageJ/plugins/Tools. Then restart ImageJ.

Note: For large images and complex selections, it is recommended to use
ImageJ 1.50d10 or later; otherwise lengthy wand operations during
preview may not be interruptible as they should.

## Update History

-   Version 1.22, 26-Jan-2017, adds second macro call and improved color
    behavior.
-   Version 1.21, 2015-Oct-11, Wayne Rasband, Michael Schmid: Converted
    to PlugInTool, fixed bug of Color sensitivity. Still
    ![available](/plugin/segmentation/versatile_wand/versatile_wand_tool_121.java).
-   For older versions, see below.

------------------------------------------------------------------------

## Old Version

In contrast to the current version, which is an ImageJ Tool, the old
version had to be called from a macro tool. Its dialog has had the
following additional items:

Install Tool

-   Installs the tool into the ImageJ toolbar. This replaces all other
    custom tools, e.g. those from the Startup Macros.
-   This option is present only if the plugin is called from the plugins
    menu.

x, y

-   Start point of the wand for preview or \'Do Wand on OK\'.
-   Always in uncalibrated units (pixels).
-   These values default to the last point where the wand has been used.
-   This input field is present only if there is an open image.

Do Wand on OK

-   After clicking \'OK\', performs a wand operation at point x,y.
-   Deselect it if you want to set the options only.
-   This checkbox is present only if there is an open image.

Preview

-   Shows the result of a wand operation at x,y.
-   Useful for trying different parameters.
-   This checkbox is present only if there is an open image.

### Installation of the old version

-   Copy
    ![Versatile_Wand.java](/plugin/segmentation/versatile_wand/versatile_wand.java)
    into the ImageJ plugins folder or a subfolder thereof. Make sure
    that you name the downloaded file "`Versatile_Wand.java`";
    uppercase/lowercase matters.
-   If using a version of ImageJ before 1.42p, remove (comment out) the
    line \"`gd.addHelp`\...\" in `showDialog`.
-   Compile with "Compile and Run" and press "OK". Disregard any
    deprecation warning.
-   Alternatively, you can load the compiled .class file
    ![Versatile_Wand.class](/plugin/segmentation/versatile_wand/versatile_wand.class)
    into the ImageJ/plugins directory or an immediate subdirectory
    thereof. Again, make sure that you name the file correctly,
    uppercase/lowercase matters.
-   Use Help\>Update Menus ore restart ImageJ to make it appear in the
    menus.
-   You can install the tool by running \'Versatile Wand\' from the menu
    and checking \'Install Tool\'.
-   Alternatively, put the following into your StartupMacros.txt file to
    have the Versatile Wand as a standard tool:

\<code\>

      macro 'Versatile Wand Tool-Cf00Lee55O2233' {
          getCursorLoc(x, y, z, flags);
          call('Versatile_Wand.mousePressed', x, y);
      }
      macro 'Versatile Wand Tool Options' {
          call('Versatile_Wand.setOptions');
      }

\</code\> If you like a more fancy icon, this one has a gradient in the
background: \<code\>

      macro 'Versatile Wand Tool-C333F8082C555F8282C777F8482C999F8682CbbbF8882CdddF8a82C00fLee44O1133' {

\</code\>

### Manual use of the old version

-   Left-click the tool icon for selecting the tool.
-   Right-click or double-click the tool icon for the options menu.

### Use of the old version in macros

You can use the Macro Recorder (Plugins\>Macros\>Record) to record
Versatile Wand selections; this will result in code like the following:
\<code\>

      call(&quot;Versatile_Wand.mousePressed&quot;, 150, 125);

\</code\> If you want to record the Options Menu, you must not
double-click (or right-click) the icon in the Toolbar; in that case it
won\'t be recorded (because it is called by a macro). Instead, call the
Versatile Wand from the Plugins Menu to record the options.

### Update History of the old version

-   2009-Jun-03 First version
-   2009-Jun-04 Inserted missing `import ij.gui.Wand`. Still
    ![available](/plugin/segmentation/versatile_wand/versatile_wand_20090603.java).
-   2009-Jul-09 Added color, non-contiguous mode, help button
-   2009-Jul-10 Fixed NullPointerException on options dialog if no image
    open.
-   2010-Sep-10 Can use eyedropper (foreground) color instead of the
    color (value) of the pixel.
-   2012-Dec-07 Bugfix, tolerance was incorrect for RGB images
    (incomplete)
-   2012-Dec-09 Bugfix again, tolerance was still inconsistent for RGB
    images
-   2014-Jul-30 Fixes a NullpointerException when calling options if no
    image open after \'do Wand on OK\'
    ![download](/plugin/segmentation/versatile_wand/versatile_wand.java)
