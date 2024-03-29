# Align 4

**Image aligning plugin.**

## Introduction

This plugin allows manual alignment (movements in the x and y
directions) up to 4 images.

## Author

G. Landini at bham. ac. uk

## Features

Supports transparency of the active image so it can be aligned with the
image data underneath.

Selection of fiducial points can be done with the mouse (an origin and a
target as a **Line Selction**) for easy alignment. First select the Line
Selection. Click on a landmark in the active image (i.e. the image
selected with the radio buttons). The landmark point is the first point
of the line selection, then select the target point (second or end point
of the line selection) and press the **Fiducial** button. The active
image should be positioned according to the line selection.

## Description

The plugin may be useful to build mosaics of smaller images. It loads 4
images in the order:

    image[1] image[2]
    image[3] image[4]

The images can be moved in x and y directorions using control buttons.

## Installation

Copy the plugin in the Plugins folder or a folder below.

## Download

The class file and source code can be found here:
<https://blog.bham.ac.uk/intellimic/g-landini-software/>

## License

GPL

## Changelog

1.0 12/Aug/2004 prototype 1.1 24/Jun/2005 corrected window closing 1.2
??? some bug fix? I can\'t remember 1.3 21/Sep/2006 added transparency,
stamps in correct order, correct BW switch, fiducial point alignment

## Known Bugs

None so far
