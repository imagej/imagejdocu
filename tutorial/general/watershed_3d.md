# 3D Watershed tutorial

Watershed is a powerful technique of mathematical morphology and has
many applications in image analysis such as merged objects splitting or
zones assignment.

## Basic principle

The seeded version implemented in the plugin
[3DWatershed](/plugin/segmentation/3d_spots_segmentation/start) will
aggregate voxels with higher values first to the seeds. Two seeds with
different values for neighbouring voxels may not be growing at same
speed, the one with higher values will grow faster then the one will
lower values.

![Watershed with seeds](/tutorial/general/wat1.png) ![Watersehd
result](/tutorial/general/wat2.png)

## Applications

The two main applications are objects splitting and voronoi computation
(zones assignment). The watershed algorithm can also be used to segment
the image based on the gradient of the intensity or the intensity
itself. }==== Splitting ==== The main application in ImageJ is the 2D
splitting of merged objects. The [2D
splitting](/gui/process/binary#watershed) application is described in
[this video
tutorial](/video/segmentation/how_the_watershed_filter_works). This
splitting is based on the computation of the [distance
map](/gui/process/binary#distance_map) inside the mask of the merged
objects. The seeds are then the local maxima of the distance map, the
farthest points from the boundaries, hence corresponding to the centres
of the objects. The bigger the object, the higher the values of the
distance map, then the faster the growing of the seeds and the bigger
the resulting object.

![Binary mask](/tutorial/general/wat1split.png) ![EDT of
mask](/tutorial/general/wat2split.png) ![Result of
splitting](/tutorial/general/wat3split.png)

### Voronoi

The [Voronoi algorithm](/gui/process/binary#voronoi) will draw lines
between objects at equal distances from the boundaries of the different
objects, this then computes zones around objects and neighbouring
particles can be computed. This can be seen as the splitting of the
background, the seeds are the local maxima of the distance map outside
the objects.

![Binary seeds](/tutorial/general/voro1.png) ![EDT of
background](/tutorial/general/voro2.png) ![Voronoi
result](/tutorial/general/voro3.png)

### Segmentation

The classical segmentation with watershed is based on the gradient of
the images ([the edges](/gui/process/find_edges)). First we find the
seeds using local extrema. In this implementation we need to
[invert](/gui/edit/invert) the edge image. The we apply the watershed on
the edge image starting from the seeds.

![Original image](/tutorial/general/gel-1.png) ![Inverted edge
image](/tutorial/general/gel-2.png) ![Seeds as local
minima](/tutorial/general/gel-3.png) ![Final watershed
result](/tutorial/general/gel-4.png)
