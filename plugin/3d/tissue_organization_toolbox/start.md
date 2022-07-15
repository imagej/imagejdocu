# 3D Tissue Organization Toolbox

## Authors

We provide a toolbox to segment and analyze tissues in 3D. Tissue
Analysis Plugin is a toolbox which allow to analyze cells and nuclei and
explore the spatial structure of tissue. This toolbox is developed by
Thomas\'s group.The goal is to suggest a workflow in order to choose a
set of optimal methodologies for quantification and modeling of tissue
organization based on\
3D microscopy images.\
This ImageJ plugin toolbox is easy access to biologist. The tissue
toolbox was used to analyze endocrine cells in a paper:\
//\"A novel toolbox to investigate tissue spatial organization applied
to the study of the islets of Langerhans\".\
Scientific Report TRAN THI NHU Hoa, ARROJO E DRIGO Rafael, BERGGREN
Per-Olof, and BOUDIER Thomas //\
[Scientific Report](http://www.nature.com/articles/srep44261)\
[Image and Pervasive Access Lab](http://www.ipal.cnrs.fr)\
Email: [](hoa.tran_thi_nhu@etu.upmc.fr) or Thomas Boudier

## Introduction

\*\*Data Requirement \*\*\
Tissue Analysis Toolbox requires some 3D microscopy images as input
data:\
\* 3D Nuclei DAPI staining: nuclear labelling DAPI which capture nucleus
in 3D.\
\* Markerset : a markerset represents a set of fluorescence markers or
imaging channels used in an experiment. More than one markerset may be
associated with a single tissue. This allows users to perform analysis
with different combinations of the available markers. In our paper, we
applied our toolbox with endocrine cells which composed of three
channels (three markers): named insulin staining, glucagon staining, and
somatostatin staining.\
\* Image file format:\
\* Only 8-bit or 16-bit TIFF format file of 3D are currently supported.
All images in one dataset should have the same size XYZ.\
\* Input: A composite image composed of all different channels and one
nuclei marker image.

\* We also provide an example of input images extracted from islet of
Langerhans: (more detail see reference paper)

-   DAPI stainning nuclei image:
    ![C4-dapi.tif](/plugin/3d/tissue_organization_toolbox/c4-dapi.zip)\
-   Three channels correspond to cytoplasmic (label or marker) and
    efficient to determine cell types: Somatostatin:
    ![C1-delta.tif](/plugin/3d/tissue_organization_toolbox/c1-delta.zip),
    Insulin:
    ![C2-beta.tif](/plugin/3d/tissue_organization_toolbox/c2-beta.zip),
    Glucagon:
    ![C3-alpha.tif](/plugin/3d/tissue_organization_toolbox/c3-alpha.zip)
-   To open these images example: launch ImageJ, open .zip file and
    obtain the .tiff format of these images.\

## Installation

Tissue Analysis Toolbox.\
\* Install [ImageJ](https://imagej.nih.gov/ij/docs/install) environment,
see intruction in ImageJ web page. ImageJ version should be \>= 1.50a
and Java 1.7 or later is required
[JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)\
\* Download the Tissue Analysis plugin in this link:
![tissueanalysis\_.jar](/plugin/3d/tissue_organization_toolbox/tissueanalysis_.jar).\
\* To work with 3D TIFF image, some libraries are required also:
[imagescience.jar](http://www.imagescience.org/meijering/software/featurej),
imageware.jar.\
\* The
[ConvexHull3D](https://imagej.nih.gov/ij/plugins/3d-convex-hull/index.html)
plugin is required only for measurements: quickhull3d.jar. \* Java3D is
required, download our 3D Viewer version [3D
Viewer](http://imagejdocu.tudor.lu/lib/exe/fetch.php?media=plugin:stacks:3d_ij_suite:3d_viewer-mcib.zip)
plugin\
(version 4 or later) or go to the main website:[3D
Viewer](http://3dviewer.neurofly.de)\
\*
[Mcib3d](http://www.imagejdocu.tudor.lu/lib/exe/fetch.php?media=plugin:stacks:3d_ij_suite:mcib3d-suite3.83.zip)
core and plugin, version 3.8 or latter: mcib3d-core_3.83.jar,
mcib3d_plugins_3.83.jar included many functions for 3D image
processing.\
\* Package [Lipid Droplet
Counter](http://imagejdocu.tudor.lu/lib/exe/fetch.php?media=plugin:analysis:droplet_counter:droplet_finder.jar)\
which contains 3D band pass filter, included in 3D Nuclei Segmentation
of tissue organization plugin.\
\* Put the jar file into the plugin folder of ImageJ and refresh menu.\
\* More details about the required plugin you can find out
[here](http://imagejdocu.tudor.lu/doku.php?id=plugin:stacks:3d_ij_suite:start).\
Starting Tissue Framework\
\* Launch ImageJ program.\
\* ImageJ \--\> Plugin \--\> 3D Tissue Spatial Analysis.\
\
The source code of this framework you can find at our github
repository:\
<https://github.com/nhuhoa/tissue_organization>

## Features

\* Filtering\
\* Nuclei segmentation\
\* SLIC clustering\
\* Watershed segmentation\
\* Compute cell zone\
\* Compute cell type\
\* Analyze cellular interaction\
\* Spatial Statistic\
\* Clusters Analysis\
\* Visualization of graph\
![](/plugin/3d/tissue_organization_toolbox/workflow.png){width="600"}\

## 1. Pre-filtering and normalize labelling image.

Before processing the marker - labelling image, we need to filter and
normalize intensity of image. ImageJ \--\> Plugin \--\> 3D Tissue
Spatial Analysis\--\> Pre-filtering Input: a composite image which
contain different channels and dapi nuclei image also. Input parameters:
Choose the label correspond to each image. It can be M1, M2, M3
(markers, cytoplasmic to determine cell type) or DAPI (nuclei), or
\*NONE\* if number of channels is smaller number of options provided.
Output: filtered images of different channels and save it into folder.
The output images will be save into a folder named \"filtered\" with the
rename of images is: C1.tif, C2.tif, C3.tif, C4-dapi.tif.

Normalize image Select image and input threshold value. The program will
remove the voxel which have intensity value below this threshold and
after the program will normalize image within the range \[0, 255\]. This
step is enable to remove a part of noise in 3D microscopy image.\
![Pre-filtering
images](/plugin/3d/tissue_organization_toolbox/filter.png){width="250"}

## 2. Nuclei Segmentation

The second step is to detect nuclei in the image by applying the
algorithm of segmentation. Images corresponding to nuclear labelling
(DAPI) were first processed by 3D median filter to reduce noise and
homogenized intensities inside nuclei. After that image were then
filtered by a 3D band pass filter which is the approximated diameter of
the nuclei region.The output is a 32-bit image, we then scale it to a
16-bit image. Our plugin 3D Spot Segmentation was used to segment the
nuclei, where local maxima from the band pass filtering are used for
seeds.

A set of defaut parameters are provide in order to suggest the
parameters for segmentation. But quality of nuclei image, volume of
nucleus vary depend on different species and different tissue. The
toolbox enable you to adjust input parameters and observe the output.\
ImageJ \--\> Plugin \--\> 3D Tissue Spatial Analysis \--\> NUCLEI
SEGMENTATION\
To adjust segmentation parameters:\
Input image: DAPI nuclei image.\
Pre-processing: choose pre-filtering (3D Median 4-4-2) if the image has
not yet filtered. Maximal Nucleus Size, Minimal Nucleus Size: you need
to provide the range \[min_size, max_size\] of nucleus radius size in
the image. Seed Threshold: threshold using to detect seed in the Band
Pass Filtered Image. Normally, we use the threshold of 30000 to extract
the brightest voxel correspond to seed in the 16-bit image. If image is
at low intensity, we can reduce this parameter. For the detail of Spot
Segmentation method, you can read the documentation of our previous
work:
http://imagejdocu.tudor.lu/lib/exe/fetch.php?media=plugin:stacks:3d_ij_suite:3d_seg_spot_tutorial.pdf\
Output: the output is a 16-bit image of nuclei segmentation which
contain different regions. Each region is indexed by one value of
intensity and have different color by applying LUT 3-3-2 RGB.\
To observe the segmentation result:\
+ Open segmented image in 3D Manager and 3D Viewer.\
+ A window of 3D Manager will appear and show the list of objects, 3D
Viewer show the visualization of objects in 3D. + From 3D Manager, you
can check the 3D nucleus object profile and have manual validation:
detect merge objects and split them. See more of 3D Manager at the
following link:
<http://imagejdocu.tudor.lu/doku.php?id=plugin:stacks:3d_roi_manager:start>\
![Nuclei DAPI segmentation
step](/plugin/3d/tissue_organization_toolbox/nuclei.png){width="700"}

## 3. Cell Zone Detection

The normal way to detect a cell is by using segmented nuclei as seeds
inside membrane region. But for 3D microscopy image, 3D membrane label
is unavailable. In this work we apply wateshed - region growing
technique to obtain the cell zone.\
ImageJ \--\> Plugin \--\> 3D Tissue Spatial Analysis \--\> CELL ZONE\
Input: nuclei segmented image.\
Distance: count from border of segmented nucleus to outside. User can
define this parameter based on observed cell. If cells are very closes,
boundary is counted haft way from maximum distance between border of two
cells. Output: watershed image, define cell zone around each nucleus as
seed.\
![Cell zone
detection](/plugin/3d/tissue_organization_toolbox/cell_zone.png){width="450"}

## 4. 3D SLIC Clustering

To combine information of different markers, we use 3D Multi-Voxels
Simple Linear Iterative Clustering (SLIC) algorithm. This algorithm
perform an unsupervised learning of different channels.\
ImageJ \--\> Plugin \--\> 3D Tissue Spatial Analysis \--\> SLIC 3D
CLUSTERING\
Input: different channels - markerset. Choose number of input images.\
Min size, Max size: \[min_size, max_size\] provide the range, which is
the volume possible of each clustering region. The defaut volume \[100,
300\] correspond to the max size and min size of nucleus in dataset, as
volume of region that the program will use for clustering.\
Nb iterations: number of iterations that program will take to perform
clustering and refine the result of clustering. The defaut value is 10
iterations. The complexity of SLIC algorithm depend on the size XYZ of
3D image. Output: one image which contain many regions, each region
correspond to one cluster of voxels, named label.tiff\
![3D SLIC
Clustering](/plugin/3d/tissue_organization_toolbox/3d_slic.png){width="650"}

## 5. 3D SLIC 3 Channels

We finally assign each zone to the channel having the highest median
value inside the zone. If all the median values inside the zone are
lower than predefined thresholds, the zone is assigned to the unlabelled
type. An image is then created with the voxels having the value of their
corresponding zone.\
ImageJ \--\> Plugin \--\> 3D Tissue Spatial Analysis \--\> SLIC 3D 3
CHANNELS\
Input: choose image correspond to different labels and SLIC label as
result of SLIC 3D CLUSTERING.\
Threshold : Input threshold value. If the median value of a SLIC region
is below this value, this region can not take into account. Output: SLIC
with intensity value of region correspond to only one channel (one
label) in the list of existing label (M1=1, M2=2, M3=3)\
![3D SLIC 3
channels](/plugin/3d/tissue_organization_toolbox/3dslic_3images.png){width="550"}

## 6. Cell Type Detection

ImageJ \--\> Plugin \--\> 3D Tissue Spatial Analysis \--\> CELL TYPE
DETECTION\
Method: take into account different region. Based on the intensity value
of three channels and cell profile that we obtain from the previous
step, we compute the cell type of each cell by quantify the marker
inside each cell zone. Input: a watershed - cell zone image, segmented
nuclei image, and SLIC labelF image.\
Region observed: INSIDE_OUTSIDE NUCLEUS, OUTSIDE NUCLEUS, INSIDE
NUCLEUS, WATERSHED REGION\
Input parameter: ratio of histogram of label\
Min distance\
Maximum distance inside of nuclei region take into account.\
Maximum distance outside of nuclei region take into account.\
Output: cell type image\
Cell profile: Nuclei.zip and Region.zip\
Saving format:\
E.g. Nuc2.2droi in Nuclei.zip\
![Cell type
detection](/plugin/3d/tissue_organization_toolbox/cell_type.png){width="300"}

## 7. Cellular Interaction Computation

We define cell-cell contact based on nucleus zone. Two cells are
neighbor if the nucleus zone of 2 cells are touching, means have the
voxel contact. (user can handle the number of voxels contact as input
parameter in the next version) Input: watershed image, 3D ROI file
Nuclei.zip, Regions.zip. At the current version our plugin will read 2
files: Nuclei.zip and Regions.zip are located in the same folder with
watershed image.\
Choose option: provide different options for computation: cell to cell
contact, layer contact, histogram contact between beta cells and alpha
cells, cells network visualization.\
Output: excel files: AllContact.csv, LayerContact.csv,
histogram_beta_alpha.csv\
Image of cells network visualization.\
![Cellular Interaction
Computation](/plugin/3d/tissue_organization_toolbox/cellular_interaction.png)

## 8. Random Organization

The program will compare the cellular interaction between observed raw
data and average of 100 simulated random organization model. ImageJ
\--\> Plugin \--\> 3D Tissue Spatial Analysis \--\> RANDOM ORGANIZATION
Input: watershed image.\
Choose one of cell type observed: TYPE1, TYPE2, TYPE3\
Choose source cell type observed: TYPE1, TYPE2, TYPE3\
Number of random organization: by defaut is 100 times simulated random
organization.\
Output:\
The number of interactions of observed raw data.\
The number of interactions of 100 simulated models and average.\

## 9. Cluster Analysis

\
ImageJ \--\> Plugin \--\> 3D Tissue Spatial Analysis \--\> CLUSTER
ANALYSIS\
Input: watershed image.\
Choose type cell observed: TYPE1, TYPE2, TYPE3\
Choose whether to compute Clusters Spatial Statistic\
Output: excel file Cluster.csv include the computation results: index
cluster, number of observed cells in each clusters, number of clusters,
average cells in total clusters, max number of cells in the biggest
cluster.\
Graph of spatial statistic F-function and G-function of cluster and SDI
value.\
![Clusters
Analysis](/plugin/3d/tissue_organization_toolbox/cluster_statistic.png){width="600"}

## 9. Spatial Statistic Analysis

Compute the spatial statistic of organization model.\
ImageJ \--\> Plugin \--\> 3D Tissue Spatial Analysis \--\> SPATIAL
STATISTIC\
Input: watershed image, Nuclei.zip, Region.zip\
Choose cell type observed: TYPE1, TYPE2, TYPE3\
Choose cell type source: TYPE1, TYPE2, TYPE3\
Choose type distance: Euclidean Distance, Cell Distance.\
Choose model for compute spatial statistic: Raw Data, Random
Organization, Clusters.\
Choose spatial statistic function to compute: F-function, G-function.\
See more about Spatial Statistic Plugin at the following link:\
http://imagejdocu.tudor.lu/doku.php?id=plugin:analysis:spatial_statistics_2d_3d:start\
![Spatial Statistic
Analysis](/plugin/3d/tissue_organization_toolbox/spatial_statistic.png){width="600"}
