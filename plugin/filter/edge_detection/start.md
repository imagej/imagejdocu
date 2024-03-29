# Edge Detection

**Edge Detection by Canny-Deriche filtering**

## Description

This plugin performs a Canny-Deriche filtering for edge detection. A
parameter controls the degree of smoothing applied; the default value is
1.0, greater values imply less smoothing but more accurate detection,
lower values imply more smoothing but less accurate detection. A
non-maximal suppression is then performed to get thin edges. The angle
of the edges can also be displayed.

A double thresholding by hysteresis is also included but can be found
separately [here](/plugin/segmentation/hysteresis_thresholding/start).

It has been written originaly by Thomas Boudier and then repackaged by
Joris Meys.

Download ![](/plugin/filter/edge_detection/image_edge.jar) to your
plugins directory and then restart ImageJ or use the Update Menus
command.

The source code is also available :
![](/plugin/filter/edge_detection/imageedgesrc.jar) (rename as .zip to
unzip it).

![Boats original
image](/plugin/filter/edge_detection/org.jpeg){width="300" height="200"}
![Boats gradient
image](/plugin/filter/edge_detection/canny-deriche.jpeg){width="300"
height="200"}

Contact me for any questions or suggestions :
![](/plugin/filter/edge_detection/email.png) or jorismeys at gmail dot
com.

------------------------------------------------------------------------
