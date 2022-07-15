# Calibrate\...

**Use this dialog box to calibrate an image to a set of density
standards.**

Use this dialog box to calibrate an image to a set of density standards,
for example radioactive isotope standards or a calibrated optical
density step tablet.

Before using this command, use **Analyze\>Clear Results** to reset the
measurement counter and use one of the selection tools and
**Analyze\>Measure** to record the mean gray value of each of the
standards. There is an
[example](http://rsb.info.nih.gov/ij/docs/examples/calibration) that
shows how to calibrate to an optical density step tablet.

\[\[\|![calibration table
dialog](http://rsb.info.nih.gov/ij/docs/images/calibrate.gif){.align-center
width="303" height="350"}\]\]

When finished making the measurements, select **Analyze\>Calibrate** to
display the **Calibrate** dialog box. To calibrate the image, enter the
known standard values in the right column, select a curve fitting method
from the drop down menu, enter the unit of measurement, and click OK.
ImageJ will then display the calibration function.

\[\[\|![calibration function
display](http://rsb.info.nih.gov/ij/docs/images/calibration-function.gif){.align-center
width="547" height="332"}\]\]

If the calibration function is not satisfactory, bring up the Calibrate
dialog box again and select a different curve fitting method.

**Rodbard** is a four parameter general curve fit function proposed by
David Rodbard at NIH. The form of the equation is:\
\<latex\>

     y = d + \frac{(a - d)} {(1 + (\frac{x}{c})_b )}

\</latex\>

Selecting **Uncalibrated OD** from the drop down menu causes ImageJ to
convert gray values to uncalibrated optical density values using the
function:

\<latex\>

    Uncalibrated OD = log_{10} \frac{255}{PixelValue}

\</latex\>

You do not need to measure OD standards or enter known OD values to
enable this feature.
