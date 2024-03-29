# Analysis_3D plugin package

\*\*Perform 3D operations based on multithreading (Labeling, parameters
measure, granulometry, erosion and diatation, median filter). \*\*

------------------------------------------------------------------------

## Author and citation

This plugins have been developed at SIMAP-GPM2 by Pierre Lhuissier, Luc
Salvo and Vincent Boulos.

When used for scientific communcations, please cite :

\"Investigating performance variations of an optimized GPU-ported
granulometry algorithm\", V. Boulos, L. Salvo, V. Fristot, P. Lhuissier,
D. Houzet. 18th International European Conference on Parallel and
Distributed Computing, Rhodes Island, Greece (2012).

## Description

### Dilero

3D dilation of erosion using octaedron or cubic structural element

Size 1 means a cube of 3x3x3 for a cubic structural element

Parameters :

-   Erosion / dilation
-   Structural element
-   Number of iteration

### Granulometry

3D granulometry using octaedron or cubic structural element

Saves data in a text file with this format : diameter Number_of_voxel
volumic_frequency time_to_process

### Median

3D fast median filter : works only with cubic structural element

Size 1 means a cube of 3x3x3 for a cubic structural element

### Labeling

Search connected components with specified connectivity

-   Initial volume must be 8 bit with only 0 or 255
-   You can eliminate objects with their volume
-   A new volume is generated in 16 bit with objects numbers starting at
    1
-   The maximum number of objects is 65500

Parameters :

-   Color to label
-   Minimum volume to label
-   3D connectivity (6 or 26)

### Parameters

Calculate parameters after a labeling treatment.

Calculate several parameters and store them in a text file with space
delimiters

Save:

          nb : color of object
          xg : coordinates of center of gravity
          yg : coordinates of center of gravity
          zg : coordinates of center of gravity
          volpix : volume in pixel
          volmarch : volume in marching cubes
          surfacemarch : surface with marching cubes
          surfacemarchnb : surface with marching cubes without taking borders into account
          sphericity :  6*volmarch*Math.sqrt(3.14159265/(surfacemarch^3)) (1 for a sphere, less otherwise)
          I1 : moment of inertia (I1&gt;I2&gt;I3)
          I2 : moment of inertia (I1&gt;I2&gt;I3)
          I3 : moment of inertia (I1&gt;I2&gt;I3)
          vI1x : x direction of I1 in global coordinates  
          vI1y : y direction of I1 in global coordinates
          vI1z : z direction of I1 in global coordinates 
          vI2x : x direction of I2 in global coordinates
          vI2y : y direction of I2 in global coordinates
          vI2z : z direction of I2 in global coordinates 
          vI3x : x direction of I3 in global coordinates
          vI3y : y direction of I3 in global coordinates
          vI3z : z direction of I3 in global coordinates
          a : size of the paralepiped with same inertia matrix
          b : size of the paralepiped with same inertia matrix
          c : size of the paralepiped with same inertia matrix
          Fab : a/b
          Fac : a/c
          Fbc : b/c
          xmin : bounding box in the global coordinates
          xmax : bounding box in the global coordinates
          ymin : bounding box in the global coordinates
          ymax : bounding box in the global coordinates
          zmin : bounding box in the global coordinates
          zmax : bounding box in the global coordinates
          dx : bounding box in the local coordinates from the center of gravity
          dy : bounding box in the local coordinates from the center of gravity
          dz : bounding box in the local coordinates from the center of gravity
          border : 1 if touching the border, 0 otherwise

## Installation

Download and copy the jar in your plugins folder.

## Download

![](/plugin/morphology/analysis_3d/analysis_3d.jar)

\-\-- *[Pierre Lhuissier](/users/lhuissier) 2012/03/12 17:14*
