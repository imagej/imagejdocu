## TAPAS : An integrated tool for batch processing and analysis of multi-dimensional images

TAPAS (Towards an Automated Processing and Analysis System) is a
framework for processing and analysis workflow for multi-dimensional
images. A workflow is a series of modules linked together to process an
image, each module should perform one simple task.

The first idea is to design a framework where **users** can share the
pipeline as simple text file. The second idea is to create a simple
programming template so **developers** can create their own module.

Finally, the pipeline should be separated from the set of images to
process, so a same pipeline can be used for different images. The
results of the processing and the analysis should be stored along with
the processed images.

Here we propose modules to process and analyze images stored in an OMERO
database, but the system should work fine with files stored locally or
on a server.

## Author

Thomas Boudier

## Features

Basically we will propose modules from the [3D ImageJ
Suite](/plugin/stacks/3d_ij_suite/start), ImageJ/Fiji, along with other
modules.

As for stable version 0.5 the following modules are available :

-   Input/Output to files (using BioFormats)
-   Input/Output to OMERO
-   3D filtering
-   Auto-threshold, hysteresis and Iterative thresholding
-   3D labeling
-   Objects measurements, signal quantification and numbering
-   Colocalisation and distances
-   Calling ImageJ macros

## Installation

       -  Install [[https://imagej.nih.gov/ij/|ImageJ]] or [[http://fiji.sc/|Fiji]].
       - Install [[plugin:stacks:3d_ij_suite:start|3D ImageJ Suite]]. It is also available as a update site in Fiji. **ImageScience** should be installed too, either from [[http://www.imagescience.org/meijering/software/featurej/|here]] or via the update site in Fiji.
       - Install bioformats, either by downloading [[https://www.openmicroscopy.org/bio-formats/downloads/|bioformats_package.jar]] or by enabling the update site in Fiji. 
       -  If you have an OMERO server, download [[https://www.openmicroscopy.org/omero/downloads/|OMERO-insight]], unzip OMERO.insight-ij-xxx.zip into the plugins directory of ImageJ or Fiji. The version number should match the version number of your server. Please do not install OMERO-insight from the Fiji update site.
       -  Download {{:plugin:stacks:3d_ij_suite:bundle-tapas0.51.zip|bundle-tapas0.51.zip}} and unzip it into the ImageJ or Fiji directory.

TAPAS was tested successfully with OMERO.insight 5.5.5 and Bioformats
6.0.1.

## Usage / Tutorials

       - If you want to process data stored on an Omero server, connect first to your server using** TAPAS Connect** inside the TAPAS menu.
       - Create your pipeline in a text editor, check available tapas modules and how to use it in the documentation provided.
       - Run **TAPAS OMERO** if you want to process data from Omero or **TAPAS FILE** for data on files.

A list of tutorials :

-   Basic **Input/Ouptput** functionalities
    [here](/plugin/utilities/tapas_tutorial_/input_output_i/start).
-   Create your first **processing pipeline**
    [here](/plugin/utilities/tapas_tutorial_/create_your_processing_pipeline/start).
-   **Segmentation** modules
    [here](/[[plugin/utilities/tapas_tutorial_/segmentation/start).
-   **Measurement** modules
    [here](/[[plugin/utilities/tapas_tutorial_/measurement/start).
-   **Signal quantification** and **numbering** modules
    [here](/[[plugin/utilities/tapas_tutorial_/signal_quantification/start).
-   **Co-localisation**
    [here](/plugin/utilities/tapas_tutorial/colocalisation/start).
-   How to use the **analyzeParticles** module for segmentation and
    measurement
    [here](/[[plugin/utilities/tapas_tutorial_/2d_measurements_with_analyze_particles_/start).
-   How to quantify **layers distribution**
    [here](/plugin/utilities/layers_analysis/start).

The list of available modules is described in
![TapasModules0.51.pdf](/plugin/stacks/3d_ij_suite/tapasdescription0.51.pdf).

## Citation

2018 Whitehead, L., Wimmer, V., Lafouresse, F., Ratnayake, D., Currie,
P., Groom, J., Rogers, K. and Boudier, T. Towards an Automated
Processing and Analysis System for multi-dimensional light-sheet
microscopy big data using ImageJ and OMERO. International Microscopy
Congress IMC 19.
(![pdf](/plugin/stacks/3d_ij_suite/abstract_1848_thomasboudier.pdf))

## License

Version 0.5 and later are under GPL distribution (see
[license](http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.html)).
Source code is available on **github** :
[tapas-core](https://github.com/mcib3d/tapas-core),
[tapas-plugins](https://github.com/mcib3d/tapas-plugins).

## Change log

-   19/09/2019 V0.51 : minor change, new module load attachment from
    Omero
-   29/08/2019 V0.5 : stable version. New modules (see list)
-   06/05/2019 V0.41beta : fix bug in input/output on Windows
-   05/03/2019 V0.4beta : channels and frames now start at 1, new
    binning option in Omero Load, module 3dfilters is renamed filters
    and has parameter radxy (instead of radx and rady), new tutorials on
    measurements and quantification
-   01/02/2019 V0.3beta : first beta release
