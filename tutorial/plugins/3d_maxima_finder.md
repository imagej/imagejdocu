# 3D Maxima Finder tutorial

Using same idea as the [ImageJ Find
Maxima](http://rsb.info.nih.gov/ij/docs/guide/146-29.html#toc-Subsection-29.4)
function, the 3D Maxima Finder detects local maxima with high contrast.
The 3D Maxima Finder plugin is part of the [3D ImageJ
Suite](/plugin/stacks/3d_ij_suite/start).

## Basic principle

Local maxima in a specified radius are computed and sorted by intensity.
Starting from local maximum with highest intensity, a 3D flooding is
performed, all connected pixels with values above the value of *local
maxima - noise value* are marked as zone of the local maximum. All other
local maxima from these zones are removed. The next local maximum is
processed, this step is repeated until there are no more local maxima to
process. The final image is created with local maxima, with their
original intensity value.

  ---------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------
  ![Original image](/plugin/stacks/3d_ij_suite/dot_blot1.png){width="256"}                                                     ![Original local maxima](/plugin/stacks/3d_ij_suite/dot_blot4.png){width="256"}
  **Original image**                                                                                                           **Original local maxima**
  ![Local zones within noise tolerance around brightest local maxima](/plugin/stacks/3d_ij_suite/dot_blot3.png){width="256"}   ![Final local maxima with high contrast](/plugin/stacks/3d_ij_suite/dot_blot2.png){width="256"}
  **Local *zones* within noise tolerance**                                                                                     **Final local maxima with high contrast**
  ---------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------

## Application

The main application of this method is of course objects (such as spots)
detection and numbering. The local maxima detected can be used as seeds
for the [3D Spots Segmentation
plugin](/plugin/segmentation/3d_spots_segmentation/start).
