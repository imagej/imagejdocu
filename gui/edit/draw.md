# Draw

**Outlines the current selection using the current foreground color and
line width.**

Outlines the current selection using the current foreground color and
line width.

When the dropper tool is selected, a click on the image changes the
foreground color, while Alt-click changes the background color.

Colors can be \"picked up\" from the **Image\>Color\>Color Picker**
window using any tool. The dropper tool icon in the tool bar is drawn in
the foreground color and the frame around it is drawn in the background
color.

The foreground and background colors can also be set with the
**Edit\>Options\>Colors\...** command.

Use the **Edit\>Options\>Line Width** command, or double-click on the
freehand line tool, to change the line width.

Note: If the line width is an even number, the selection boundary is at
the center of the line. If the line width is odd (1, 3, \...), the
center of the line drawn is displaced from the selection edge by 1/2
pixel to the bottom right. Thus the line center (the line in case of
line width = 1) is inside the selection at the top and left borders, but
outside at the bottom and right borders. Rectangular selections (but not
polygonal selections or traced selections that happen to be rectangular)
are an exception to this rule: For rectangular selections, one-pixel
wide outlines are always drawn inside the rectangle. Thicker lines are
drawn as for the other selection types.
