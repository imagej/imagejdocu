# Active contour (Snake)

**Semi-automatic segmentation by active contours.**

![Snake
Segmentation](/plugin/segmentation/active_contour/snake_segmentation.jpeg){.align-center}

Download and copy ![](/plugin/segmentation/active_contour/absnake_.jar)
into you plugins directory

1.  draw the roi (freehand, ellipse, rectangle, polygon or straight
    line) close to the contour you want to detect (either inside or
    outside). For multiple snakes draw rois and add them to the
    RoiManager.
2.  start the **ABSnake** plugin
    1.  select the threshold to find edges (you can use the
        [start](/plugin/filter/edge_detection/start) plugin to view the
        edges image)
    2.  choose the number of iterations and the step to display
        intermediate results
    3.  for stacks choose the first and last slice to process (can be in
        reverse order)
    4.  choose the color to draw the snake
    5.  check if you want to save the coordinates (into the default
        ImageJ directory : into files called ABsnake-ri-zi.txt and in
        .roi files)
    6.  check if you want to create a segmented binary image
    7.  In **Advanced Options** check for advanced parameters :\
        - Distance search for contours
        1.  Minimum and maximum displacements of points at each
            iteration
        2.  Minimum and maximum alpha value for Deriche filtering
            (inverse values)
        3.  Maximum distance to find and edges (used for growing or
            shrinking snakes)
        4.  Minimum and maximum regularization values
        5.  Multiplicative factors to modify the above values\
            - runs also for stacks, in this case the initialization for
            slice *i+1* can be either original roi or snake found at *i*
            (use *propagate* option).

The **source** is available as a jar file below *absnake-src* (unzip it)
or on [GitHub](https://github.com/salsaj-boudier/ABSnake).

New options were added by Feel Contraire in absnake2 :

-   It now accepts type 4 rois like those from Analyze Particles.
-   It allows to save each iteration Roi.
-   It allows setting other folder to save the rois, coords and images.
-   Swapped the name order of the savings: first roi number, then
    iteration number.

**Links**:

The plugin was applied to segmentation and quantification of visceral,
subcutaneaous and total abdominal adipose tissue, acquired with magnetic
resonance imaging. See the [AATAP plugin](/plugin/analysis/aatap/start).

**References**:

P. Andrey, T. Boudier, Adaptive Active Contours, ImageJ Conference 2006
(![](/plugin/segmentation/active_contour/absnake.pdf))\
T. Boudier, Elaboration d\'un modèle de déformation pour la détection de
contours aux formes complexes, Innov. Techn. Biol. Med., Vol 18, n°1,
1997.

Contact me for any questions or suggestions :
![](/plugin/segmentation/active_contour/email.png)

![absnake\*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1](/filelist&gt;/plugin/segmentation/active_contour/absnake*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1)
