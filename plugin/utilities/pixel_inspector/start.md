# Pixel_Inspector

**This plugin displays the pixel values at the cursor and its
surroundings.**

**Also see the [Pixel Inspector
Tool](http://imagej.nih.gov/ij/plugins/pixel-tool/) (based on this
plugin), which is usually more handy than this plugin.**

The plugin displays the pixel values of a square neighborhood around the
current cursor position as a table. The position can be fixed by a
keystroke; in this case the last cursor position is used further on and
marked in the image. The arrow keys nudge this position if the Pixel
Inspector window is in the foreground. Use the fixed mode to examine how
a filter changes the data (also during preview).

By default, the key switching between fixed mode and following the
cursor is the \"!\" key; it can be changed in the Preferences menu.

If the Pixel Inspector Window is in the foreground, \"c\" (also with any
modifier keys, e.g. CTRL-C etc.) copies the current table of pixel
values into the clipboard (tab-delimited).

In the table, the center position (current cursor) is printed in red (x,
y and the value). Columns and row headers (x & y) are always raw pixel
values, irrespective of any spatial calibration. The direction of the y
axis is determined by [Analyze\>Set Measurements\>Invert Y
Coordinates](/gui/analyze/set_measurements)). The pixel value readout
depends on the preferences.

The Pixel Inspector panel closes automatically if the image is closed.

![](/plugin/utilities/pixel_inspector/pixelinspector_fixedmode.png){.align-center}
*The Pixel Inspector in \"fixed\" mode. The red square shows where the
pixels are read. Note that this square is independent of the selection
(yellow).*

## Preferences

For the Preferences menu, press the Prefs button at top left.
Preferences items are stored in the IJ_Prefs.txt file.

-   **Radius** determines the size of the table, 3x3 for radius=1, 5x5
    for radius=2 etc. The Pixel Inspector window must be closed and
    opened to get the new size.
-   **Readout** for **grayscale** 8&16 bit images can be raw, calibrated
    or hexadecimal.
-   **Readout** for **RGB** images can be R,G,B triples, gray value or
    hexadecimal.
-   The **\"fix position\" key** should be a key not used by ImageJ as a
    [shortcut](/keyboard/buildin), e.g. \"!\". It can be a normal
    character key or F1 \... F12.
-   The **color** of the square showing the position in fixed mode can
    be selected.
-   For **copying** the pixel values to the clipboard, it can be
    selected whether the current position (x,y) is not not written at
    all, written in the first line or in the same way as the header
    lines of the Pixel Inspector panel.

![Pixel Inspector
Preferences](/plugin/utilities/pixel_inspector/pixelinspector_pref.png){.align-center}

## Usage

-   Copy
    ![Pixel_Inspector.java](/plugin/utilities/pixel_inspector/pixel_inspector.java)
    into the ImageJ plugins folder or a subfolder thereof. Make sure you
    name the downloaded file "`Pixel_Inspector.java`";
    uppercase/lowercase matters.
-   Compile with \"Compile and run\" and press \"OK\". Disregard any
    deprecation warning.

## Limitations and known problems

-   Some image operations do not update the display (improved in ImageJ
    1.39l).
-   If the image is in the foreground, sometimes the \"fix position\"
    key may not work. As a workaround, either click on the image with
    any area selection tool or keep the Pixel Inspector panel in the
    foreground.
-   The square showing the position in fixed mode disappears after
    operations that create their own image overlay. As a workaround,
    nudge the position back and forth (e.g. left and right arrow key).
    Also opening and closing the Prefs menu will repaint the square.

## Version History

-   Version 2007-Dec-14 supports exponential format for pixel data\
    \* Version 2007-Dec-06 fixes a few bugs (update and calibration
    problems).
-   Version 2007-Dec-02 adds preferences, RGB readout, fixed mode, copy
    to clipboard.
