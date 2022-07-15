# ROI Coordinates in physical units

**ImageJ currently stores ROI coordinates as pixel coordinates.**

In our microscope work, we may make images of the same physical area
with different resolutions (pixel size in μm). We would like to be able
to select cells in one image as ROI:s, and then use the same ROI:s in
images of another resolution, but representing the same region in
physical space.

I would propose storing ROI coordinates in the image pixel size units
(meters, maybe other dimension such as seconds or radians if time or
angles are supported image dimension) together with which units they are
in (for each dimension) in addition to pixel coordinates (if the image
where the ROI is defined has a defined pixel size), and having a
preference or option to determine if physical or pixel coordinates are
to be used to draw the ROI:s.

This will also affect the file format for storing ROI lists.

Comments?
