# Nonuniform Background Removal

**Estimates non-uniform background level by fitting a parametric surface
to background samples.**

This ImageJ plugin allows removal of non-uniform background noise. It
finds a least-squares fit of background samples within the image to one
of two intensity profiles: 1) a plane, or 2) a 2D cubic polynomial. The
estimated background is subtracted from the input image. This plugin can
operate on either the current image in a stack or on an entire stack. In
the case that it operates on the stack, background fitting operates on a
slice-by-slice basis. Additionally, the background estimate image may be
created to inspect the quality of the fit.

Download this plugin
[here](http://www.cs.unc.edu/~cquammen/imagej/nonuniform_background_removal.html).
