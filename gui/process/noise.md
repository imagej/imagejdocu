# Noise

**What do the Noise filters do?**

Use the commands in this submenu to add noise to images or remove it.
For more advanced capabilities, check out Erik Meijering\'s RandomJ
package (Binomial, Exponential, Gamma, Gaussian, Poisson and Uniform) at
[www.imagescience.org/meijering/software/randomj/](http://www.imagescience.org/meijering/software/randomj/).

![](http://rsb.info.nih.gov/ij/docs/images/noise.gif){.align-center}

### Add Noise

Adds random noise to the image or selection. The noise is Gaussian
(normally) distributed with a mean of zero and standard deviation of 25.

### Add More Noise

Adds Gaussian noise with a mean of zero and standard deviation of 75.

### Salt and Pepper

Adds salt and pepper noise to the image or selection by randomly
replacing 2.5% of the pixels with black pixels and 2.5% with white
pixels. Note: this command only works with 8-bit images.

### Despeckle

This is a median filter. It replaces each pixel with the median value in
its 3 x 3 neighborhood. This is a time consuming operation because, for
each pixel in the selection, the nine pixels in the 3x3 neighborhood
must be sorted and the center pixel replaced with the median value (the
fifth). Median filters a good at removing salt and pepper noise.

### Remove Outliers

This is a selective median filter that replaces a pixel by the median of
the pixels in the surrounding if it deviates from the median by more
than a certain value (the **threshold).** It is useful for correcting,
e.g., hot pixels or dead pixels of a CCD image.

![Remove Outliers
dialog](http://rsb.info.nih.gov/ij/docs/images/outliers.gif){.align-center}

**Radius** determines the area used for calculating the median
(uncalibrated, i.e., in pixels). See *Process\>Filters\>Show Circular
Masks* to see how radius translates into an area. **Threshold**
determines by how much the pixel must deviate from the median to get
replaced, in raw (uncalibrated) units. **Which Outliers** determines
whether pixels **brighter** or **darker** than the surrounding (the
median) should be replaced.
