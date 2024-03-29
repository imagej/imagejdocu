# Threshold_Colour

**A modification of Bob Dougherty\'s BandPass2 filter to threshold
colour RGB images in the HSB, RGB, CIE Lab or YUV spaces.**

## Author

by Gabriel Landini.

## Description

The plugin suports extracting the range of HSB, RGB, CIE Lab or YUV
values from a sample ROI (any type) to set (move in the x and y
directions) stretch and rotate the filters automatically. Extract the
files from the zip archive and put them somewhere in the plugins
directory (or subdirectory). The Threshold_Colour entry will appear in
the Plugins hierarchy, depending of the subdirectory which the plugin is
copied to (I suggest the name \"Segmentation\" to keep all thresholding
plugins).

Threshold_Colour dialog.

The \[Macro\] button generates a macro that is sent to the Recorder
window (if active) based on the current plugin settings.

The zip file also includes RGB2YUV and RGB2Lab plugins which are
necessary for that macro (note that these plugins convert an RGB image
to YUV and CIE Lab colour spaces but with values mapped into an 8-bit
space). The Threshold_Colour plugin, soruce and documentation are based
at <https://blog.bham.ac.uk/intellimic/g-landini-software/>
