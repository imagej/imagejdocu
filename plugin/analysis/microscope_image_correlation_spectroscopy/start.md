The MICS plugin is used for the analysis of fluorescent image sequences
by Image Correlation Spectroscopy.

## Microscope Image Correlation Spectroscopy

**Introduction ** Fluorescence spectroscopy by image correlation is a
technique that allows analysing and characterizing the different
molecular dynamics from a sequence of fluorescence images.

Many image correlation techniques have been developed for different
applications but in particular to study the mechanisms of cell adhesion
during migration. These techniques can be used with most imaging
modalities: e.g. fluorescence widefield, confocal microscopy, TIRFM.
They allow to obtain information such as the density in molecules,
diffusion coefficients, the presence of several populations, or the
direction and speed of a movement corresponding to active transport when
spatial and temporal correlations are taken into account (STICS:
Spatio-Temporal Image Correlation Spectroscopy).

## Authors

Chen Chen, Perrine Paul-Gilloteaux, François Waharte.

This plugin is based on ICS_tools plugin by Fitz Elliott, available at :
<http://www.cellmigration.org/resource/imaging/imaging_resources.shtml>

## Description

Here is a screenshot of the main window of the plugin:

![](/plugin/analysis/microscope_image_correlation_spectroscopy/mics_ui.png){width="300"}

You have to choose the technique you want to use from the list and then
follow the different steps corresponding to the type of analysis. A
brief description for each technique is given on the main window. The
control menu allows you to define an analysis ROI. Use a calibrated
stack (Image/Properties) in um and seconds. Ideally start with ICS which
will compute the beam width, and then run TICS or STICS. A tutorial will
come soon with examples.

## Installation

Download
![](/plugin/analysis/microscope_image_correlation_spectroscopy/new/mics_toolkit_.jar)
and extract to a new folder in the ImageJ plugins folder. There will be
a new \"MICS\" folder with a new \"MICS\" command in the Plugins menu
the next time you restart ImageJ.

## License

The program is **open source**; you can redistribute is and/or modify it
under the terms of the **GNU General public License**.
