# Nonuniform Background Removal

**Estimates non-uniform background level by fitting a parametric surface
to background samples.**

This ImageJ plugin allows removal of a non-uniform background. It finds
a least-squares fit of background samples within the image to one of two
intensity profiles: 1) a plane, or 2) a 2D cubic polynomial. The
estimated background is subtracted from the input image. This plugin can
operate on either the current image in a stack or on an entire stack. In
the case that it operates on the stack, background fitting operates on a
slice-by-slice basis. Additionally, the background estimate image may be
created to inspect the quality of the fit.

The plugin will calculate its background image from all ROIs listed in
the [ROI manager](/gui/analyze/tools#roi_manager). Therefore, one must
first designate regions of interest by using the ROI manager. Ideally,
the regions of interest will be dispersed across the entire image.
Selecting only a local region of the image may produce a worse fitting
background estimate of the image the more distant it gets from this
local ROI. This is due to the fit being an extrapolation then of the
locally chosen region rather than being a more accurate interpolation
between a spatially wider spread variety of regions.

During subtraction of the estimated background from the input image,
some negative values could be created. Because these negative values
would get clamped to zero (which is undesirable), the plugin computes
the minimum of such negative value and offsets ALL corrected values by
the absolute value of this minimum. The result is that the minimum value
in the corrected stack will be 0.

Another way to remove background from images is the [Remove
Background](/gui/process/subtract_background) command. However, this is
based on a rolling ball operation and can not be specified for certain
regions of interest. This plugin here is more flexible and might produce
more desirable background correction, but it also requires more user
input.

Both the non-uniform background removal and the remove background
command methods can be used as well for multiplicative background
removal rather than their subtractive standard setting. For that purpose
the tickboxes only create background must be switched on and the
original image later divided through the background image with a result
in 32bit.

Download this plugin: Original link broken
\<del\><http://www.cs.unc.edu/~cquammen/imagej/nonuniform_background_removal.html%3C/del%3E>;

See this post instead:[forum
post](https://forum.image.sc/t/nonuniform-background-removal/26626/4)

\-\-- *\[\[\|Cory Quammen\]\] 2007/08/30 15:45*
