# ImageJ based segmentation, processing and evaluation of digital radiology phantom images

## Abstract

### Introduction

In digital radiology it is state of the art to perform specialised
procedures to estimate the image quality of the complete system on
regular bases. This is done using dedicated phantoms. In general the
images taken with these phantoms have to be evaluated manually by a
visual observer. This procedure is, depending on the test, very time
consuming. To reduce the evaluation time the Open Source quality control
tool for medical images - Optimage - was developed. The Optimage
software package supports various modalities and phantoms \[1\]. This
work describes the used image processing methods for the segmentation
and evaluation of the projection radiography module based on the German
DIN 6868-13 (Constancy testing of projection radiography systems with
digital image receptors) standard \[2\].

### Materials and Methods

The phantom DIGI-13 from IBA Wellhöfer was selected as test phantom. For
the segmentation of the phantom features, an ImageJ plugin was written.
This plugin was designed to deliver a polygon ROI containing the phantom
features. During the iterative segmentation process the plugin uses as
well build-in ImageJ methods and additional ImageJ plugins for image
processing. A classification of the intermediate data checks, if the
iterative process has finished or not. The image segmentation uses
filter methods to reduce high frequency noise in the image and a
combination of the variance filter and contrast enhancement to extract
the build-in grid. The Particle Analyzer is then used to segment the
grid elements. The subsequent classification uses geometric rules to
find the embedded features. From these "approximately" determined
positions, the inner grip corners are detected by evaluating the grid
crossings.

### Results

The developed plugin is tested with a large number of phantom images
regarding the stability and correctness of the results. The plugin works
correctly for a large range of different doses and rotation angles.
Limitations: Results are not valid for images manipulated during post
processing.

### Conclusions

The developed ImageJ plugin is now integrated into Optimage to perform
the segmentation of the DIGI-13 phantom. Due to the power of the ImageJ
provided segmentation and processing methods, the needed functionality
was easy to implement.

### References

\[1\] Optimage central organised Image Quality Control including
statistics and reporting: A.Jahnen, C.Schilz, F.Shannoun, A.Schreiner,
J.Hermen, C.Moll; Radiation Protection Dosimetry, Oxford University
Press (2008).\
\[2\] DIN 6868-13 Constancy testing of projection radiography systems
with digital image receptors: NAR; Deutsches Institut für Normung e.V.
(2003-02).

### Keywords

quality control, plugin, Optimage, segmentation, projection radiography,
DIN 6868-13

### Authors

Christian Moll¹, Clemens Schilz², Johannes Hermen¹ and Andreas Jahnen¹

### Organisation

\(1\) Public Research Centre Henri Tudor, (2) Brüderkrankenhaus Trier

Homepage <http://santec.tudor.lu>

### Short Biography

Christian Moll studied Photo Engineering, Media Technology and Imaging
Sciences at the Applied University of Cologne (Germany). He graduated in
August 2006 with a diploma thesis about the "Automatic Determination of
Measurement in Phantom Images according to PAS 1054 and their
statistical Evaluation". He currently works for the Public Research
Centre Henri Tudor - SANTEC in Luxembourg, as a research engineer since
he finished his studies. His main research interests are currently image
quality and image processing.

## Media

![Poster](/users/cmoll/optimage_poster_v1_a3.pdf)
