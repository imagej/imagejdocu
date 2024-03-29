# Periodic Boundary Blur

**A plugin-filter that smoothens an image with periodic boundary
conditions.**

The filter is intended for smoothing in the Fourier domain, e.g. for
smoothing custom FFT filters, and for rotational smoothing when used
after the
[Polar_Transformer](http://rsb.info.nih.gov/ij/plugins/polar-transformer.html)
plugin.

\"[wp&gt;Periodic boundary conditions](wp&gt;Periodic boundary conditions)\"
means that the image is treated as if repeated on all sides. Thus, an
object at, e.g., the right edge of the image will be blurred into the
image at its left edge.

## Filter parameters

-   \"Type\": Smoothing can be done by moving averages (\"mean\") or an
    approximation of a \"Gaussian\" blur implemented as successive
    moving average filters.
-   \"X Direction\", \"Y Direction\": Filtering can be done in one
    direction only (x or y) or in both directions.
-   \"Radius\": For moving averages (type=\'mean\'), the kernel size is
    2\*(radius+1). For the approximated Gaussian, \'radius\' roughly
    gives the standard deviation sigma.
-   Preview is available with the \"Preview\" checkbox.

## Notes

-   The filter works on the whole image, irrespective of any selection
    (roi).
-   \'mean\' filtering by a given radius is stronger than Gaussian
    filtering; the standard deviation sigma of a \'mean\' filter with
    radius r is given by\
    %% %% sigma = sqrt(r\*(r+1)/3) .
-   The approximation of a Gaussian is very rough for values of the
    radius (sigma) below approx. 3. In any case, sigma (radius) is not a
    smooth variable but varies with steps of a few tenths.

## Usage

Download the sourcecode (file
![Periodic_Boundary_Blur.java](/plugin/filters/periodic_boundary_blur/periodic_boundary_blur.java)),
put it into the \"plugins\" folder or a subfolder thereof and compile it
via Plugins\>Compile and Run\... (make sure you name the downloaded file
\"Periodic_Boundary_Blur.java\"; uppercase/lowercase matters).

\-\-- *[Michael Schmid](/users/schmid) 2009/03/25 21:20*
