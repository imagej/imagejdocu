# DIC Processor

**This ImageJ plugin-filter processes images of differential
interference contrast microscopy (DIC) of sparse objects on a uniform
background. It converts a differentiated image (seemingly illuminated
from the side), with one side darker and one brighter than the
background, into an image where the objects stand out as a bright (or
dark) entities.**

## Features

The image has to be converted to 32 bits (Image\>Type\>32-bits).

The plugin only works if the gradients are in the horizontal (x)
direction; either have the DIC set up oriented accordingly or rotate the
image. Before rotating the image, apply a [highpass
filter](/plugin/filter/highpass_filter/start).

For good results, dark spots from dust in the optics or on the camera
sensor should be avoided. If necessary, apply dark frame and flat field
corrections to the image.

## Description

![Screenshot](/plugin/filter/dic_processor/dic_processor_screenshot.jpg){.align-right}
The plugin does three steps:

1.  High-pass filter in x direction, may be deselected if a high-pass
    filter has been applied to the image before (put the sigma to 0).
2.  Integration along the image lines.
3.  High-pass filter in x direction.

Instead of the second high-pass filter, it would be better to apply a 1D
\'sliding paraboloid\' background subtraction; this would avoid the dark
background strips left&right of the objects (but I did not have time to
implement it). With the current version, you have to play with the
smoothing parameters to reduce these artifacts.

## Installation

Download the source code or .class file and rename to DIC_Processor.java
or DIC_Processor.class, respectively. Uppercase/lowercase matters. Put
in to the ImageJ/plugins directory or an immediate subdirectory thereof.

## Version

2020-Feb-28 1st version.

## Download

![Source
code](/plugin/filter/dic_processor/dic_processor.java){.align-center},
for \'Compile & Run\' on ImageJ 1.\
![.class
file](/plugin/filter/dic_processor/dic_processor.class){.align-center},
if \'Compile & Run\' does not work (ImageJ2).

## License

Public domain. This plugin is provided on an \"AS IS\" BASIS and WITHOUT
WARRANTY.

## Author

Michael Schmid
