# Image Stabilizer

Homepage: [Image
Stabilizer](http://www.cs.cmu.edu/~kangli/code/Image_Stabilizer.html).

## Introduction

This plugin stabilizes jittery image stacks using the Lucas-Kanade
algorithm.

## Author

[Kang Li](http://www.cs.cmu.edu/~kangli/)

## Features

The major features of this plugin are:

-   Automatically stabilizes/dejitters/aligns grayscale and or image
    stacks

```{=html}
<!-- -->
```
-   Support for logging alignment coefficients and reapplication to
    other stacks

```{=html}
<!-- -->
```
-   Support for very large stacks that do not fit in memory

```{=html}
<!-- -->
```
-   Support for macro recorder

## Description

The plugin works as follows:

-   It uses the currently shown slice in an image stack as the initial
    reference, or \"template\";

```{=html}
<!-- -->
```
-   It estimates the geometrical transformation needed to best align
    each of the other slices with the \"template\". The estimation and
    alignment are performed using the Lucas-Kanade algorithm;

```{=html}
<!-- -->
```
-   Once a slice is aligned, the \"template\" will be updated on the fly
    using the formula: new_template = a \* old_template + (1 - a) \*
    newly_aligned_slice, where \"a\" is the \"template update
    coefficient\" that can be adjusted when the plugin is run.

## Installation

Please follow the instructions
[here](http://www.cs.cmu.edu/~kangli/code/Image_Stabilizer.html).

## Download

Available from
<http://www.cs.cmu.edu/~kangli/code/Image_Stabilizer.html>.

## License

Permission to use, copy, modify, and distribute this software for any
purpose without fee is hereby granted, provided that this entire notice
is included in all copies of any software which is or includes a copy or
modification of this software and in all copies of the supporting
documentation for such software. Any for profit use of this software is
expressly forbidden without first obtaining the explicit consent of the
author.

THIS SOFTWARE IS BEING PROVIDED \"AS IS\", WITHOUT ANY EXPRESS OR
IMPLIED WARRANTY. IN PARTICULAR, THE AUTHOR DOES NOT MAKE ANY
REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF
THIS SOFTWARE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.
