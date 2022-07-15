## Introduction

This plugin draws 3D Mandelbrot fractals stacks.

## Author

Amaury CHABOD

[a_chabod@yahoo.fr](a_chabod@yahoo.fr)

## Description

2D Mandelbrot sets are (x+iy) points of plane where the iteration
Z\<sub\>p+1\</sub\>=Z\<sub\>p\</sub\>\<sup\>2\</sup\>+(x+iy) converges.

In the case of 3D, Daniel White uses the idea to create a pseudo-product
using spherical coordinates:

\<x,y,z\>\<sup\>n\</sup\> = r\<sup\>n\</sup\>
\<cos(nθ)cos(nφ),sin(nθ)cos(nφ),sin(nφ)\>

r=√(x²+y²+z²) θ=atan(y/x) φ=asin(z/r)

The iteration \[ Z\<sub\>p+1\</sub\>=Z\<sub\>p\</sub\>\<sup\>n\</sup\> +
\<x,y,z\> \] converges inside a 3D fractal area.

Paul Nylander makes experiments with exponants higher than 2. The best
result is obtained with exponant 8 and is named

\"Mandelbulbe\".

<http://en.wikipedia.org/wiki/Mandelbrot_set>

## Installation

The Mandel_3D plugin contains two java class files.

      * Download it
      * Copy the files Mandel_3D.class and bulbe.class to your ImageJ plugins folder or subfolder (please observe the uppercase characters in the class name)
      * Restart ImageJ or go to Help&gt;Update Menus
      * The plugin can be accessed through the ImageJ plugins menu as /plugin/Folder/Mandel_3D. This plugin needs any input 8-bytes image to run (File/new image).

3D rendering is assumed using VolumeJ IMAGEJ plugin:

<http://webscreen.ophth.uiowa.edu/bij/vr.htm>

## Download

![](/plugin/3d/3d_mandelbrot_fractals/mandel_3d.class)
![](/plugin/3d/3d_mandelbrot_fractals/mandel_3d.java)
![](/plugin/3d/3d_mandelbrot_fractals/bulbe.class)
![](/plugin/3d/3d_mandelbrot_fractals/bulbe.java)

## Examples

This is an example of a 500X500X500 stack, with an 8-exponent and 25
iterations. 3D Rendering is the following:

![](/plugin/3d/3d_mandelbrot_fractals/rendering_bulbe_exp8.gif)
