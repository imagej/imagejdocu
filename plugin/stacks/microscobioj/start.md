# MicroSCoBioJ

## Introduction

MicroSCoBioJ is a collection of three plugins to create and visualize 3D
fluorescence volume rendering

## Authors

Fabio Frosi (frogsi (at) libero.it)\
Giuseppe Vicidomini (gvicid (at) gwdg.de)

## Features

**Requires:** ImageJ + Java 3D ( <http://java3d.j3d.org/download.html>
)\
**Limitations:** Only works with 8-bit images stack\

## Description

**MicroSCoBioJ** contains three plugins:

1.  Mesh Maker MicroSCoBioJ computes the triangles or tetrahedra mesh
    corresponding an user-defined treshold
2.  Mesh Viewer MicroSCoBioJ 3D viewer of the mesh created by MeshMaker
3.  WAT MicroSCoBioJ Weight Adaptive Threshold

##### Mesh Maker MicroSCoBioJ

      * Load a 8-bit images stack\\

![](/plugin/stacks/microscobioj/micros1.jpg)

      * Start MeshMaker plugin ( //Plugins &gt;MicroSCoBioJ &gt; MeshMaker MicroSCoBioJ// )\\
      * Using the following menu one can choose: treshold, voxel dimensions, and algorithm (marching cubes or marching tetratrahedra)\\

![](/plugin/stacks/microscobioj/micros2.jpg)![](/plugin/stacks/microscobioj/micros3.jpg)

-   The mesh calculation could take several minultes (up to an hour), a
    progress bar will display the percentage of the performed
    caculation.
-   Save the mesh file\
    == Mesh Viewer MicroSCoBioJ ==

1.  This plugin show up to four different meshes (with different colors:
    red, blue, green and yellow).

```{=html}
<!-- -->
```
1.  It is possible to visualize the mesh as points, lines or fill
    surface.

```{=html}
<!-- -->
```
1.  Other capabilities: translations, zoom, trasparency (indipendent for
    each mesh)

![MeshViewer
interface](/plugin/stacks/microscobioj/micros4.jpg){.align-center}\
\<imgcaption image1\|MeshViewer interface\>MeshViewer
interface\</imgcaption\> ![Zoom
effect](/plugin/stacks/microscobioj/micros5.jpg){.align-center}\
\<imgcaption image2\|Zoom effect\>Zoom effect\</imgcaption\>

##### WAT MicroSCoBioJ

The algorithm used in the previous step, identifies a global threshold
for all pixels of an image, using statistical properties of the image
histogram. Unfortunately this algorithm is not able to accommodate
changes in the distribution of different fluorescence concentration in a
structure. Chow and Kaneko (ref. 1) solved this problem dynamically
changing the threshold over the image: each local pixel threshold is
obtained by statistical investigation of the intensity values of the
local neighbourhoods of such pixel. We combined the IsoData threshold
(Th_IsoD) (ref. 2), with the dynamic threshold (Th\<sub\>d\</sub\>), to
find a weight adaptive threshold (Th\<sub\>wa\</sub\>):
Th\<sub\>wa\</sub\>(x,y) = w\<sub\>IsoD\</sub\>\*
Th\<sub\>IsoD\</sub\> + w\<sub\>d\</sub\> \*Th\<sub\>d\</sub\>(x,y) +
w\<sub\>base\</sub\>\*Th\<sub\>base\</sub\>+background with
w\<sub\>IsoD\</sub\> + w\<sub\>d\</sub\> + w\<sub\>base\</sub\>= 1
Th\<sub\>base\</sub\> can be used to increase or decrease the final
threshold on the base of prior information; moreover, further
information, e.g. background, can be directly added to the algorithm.

Using WAT MicroScoBioJ menu one can choose the following parameters: the
window size, Th\<sub\>base\</sub\> , three weights and the background
value.

![WAT MicroSCoBioJ
menu](/plugin/stacks/microscobioj/micros6.jpg){.align-center}\
\<imgcaption image3\|WAT MicroSCoBioJ menu\>WAT MicroSCoBioJ
menu\</imgcaption\>

##### References:

1.  Chow, C. K. & Kaneko, T. Automatic Boundary Detection of the Left
    Ventricle from Cineangiograms. Comp. Biomed. Res. 5, 338-410.
    (1972).
2.  Ridler, T. & Calvard, S. Picture thresholding using an iterative
    selection method. IEEE Trans. Systems Man Cybernet. 8, 629-632.
    (1978).

## Installation

Download
![MicroSCoBiOJ.zip](/plugin/stacks/microscobioj/microscobioj.zip) and
unzip it into the plugins folder and restart ImageJ.

## Download

![](/plugin/stacks/microscobioj/microscobioj.zip) 158KB
