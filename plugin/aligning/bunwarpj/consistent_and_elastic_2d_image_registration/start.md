# bUnwarpJ

Consistent and elastic 2D image registration. Homepage:
[bUnwarpJ](http://biocomp.cnb.csic.es/~iarganda/bUnwarpJ/).

![](/plugin/aligning/bunwarpj/consistent_and_elastic_2d_image_registration/bunwarpj_scheme.png)

## Introduction

Registration method based on elastic deformations represented by
B-splines. The invertibility of the deformations is forced through a
consistency restriction. For a quick start, you can have a look at the
[video tutorial](/video/aligning/bunwarpj_basic_tutorial).

## Author

[Ignacio
Arganda-Carreras](http://arantxa.ii.uam.es/~iarganda/index_EN.html)

## Features

It elastically registers two 2D images (8, 16, 32-bit grayscale or RGB
Color).

## Description

bUnwarpJ is an algorithm for elastic and consistent image registration
developed as an ImageJ plugin. It performs a simultaneous registration
of two images, A and B. Image A is elastically deformed in order to look
as similar as possible to image B, and, at the same time, the
\"inverse\" transformation (from B to A) is also calculated so a
pseudo-invertibility of the final deformation could be guaranteed. Two
images are given as a result: the deformed versions of A and B images.

The algorithm implemented on bUnwarpJ and its technical explanations are
detailed on the paper:

Ignacio Arganda-Carreras, Carlos O. S. Sorzano, Roberto Marabini, Jose
M. Carazo, Carlos Ortiz de Solorzano, and Jan Kybic, "Consistent and
Elastic Registration of Histological Sections using Vector-Spline
Regularization", Lecture Notes in Computer Science, Springer Berlin /
Heidelberg, volume 4241/2006, CVAMIA: Computer Vision Approaches to
Medical Image Analysis, pages 85-95, 2006.

For more details, visit the plugin\'s homepage:
[bUnwarpJ](http://biocomp.cnb.csic.es/~iarganda/bUnwarpJ/).

## Installation

You must simply download bUnwarpJ\_.jar to the Plugins folder of ImageJ,
restart ImageJ and there will be a new **\"Registration \> bUnwarpJ\"**
command in the Plugins menu.

## Download

You can download the latest version of the plugin with the JAR file
[bUnwarpJ\_.jar](http://jenkins.imagej.net/job/Stable-Fiji/ws/Fiji.app/plugins/bUnwarpJ_-2.6.1-SNAPSHOT.jar).
The source code is available [in
GitHub](http://github.com/fiji/bUnwarpJ).

## License

This program is **free software**; you can redistribute it and/or modify
it under the terms of the **GNU General Public License** as published by
the Free Software Foundation (<http://www.gnu.org/licenses/gpl.txt>).

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License for more details.
