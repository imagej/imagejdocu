# Expression and ExpressionNT

These plugins apply user-specified formulas to each pixel in an image.
They can be used to alter existing images, or to create fully synthetic
new images.

**Expression** does this by interpreting the formula for each pixel;
this makes it somewhat slow for complex formulas. **ExpressionNT**
compiles the formula as a Java class and executes it; this makes for
much faster execution. It also has extra functionality to generate
fractal images, and supports the HLS and HSV color models. In general,
ExpressionNT should be used, simply because it is so much faster.

The plugins can be found at:
<http://www.ulfdittmer.com/imagej/expression.html>

by Ulf Dittmer --- last modified on April 2 2008
