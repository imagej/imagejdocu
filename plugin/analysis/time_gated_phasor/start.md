This plugin is designed to analyze the lifetime images recorded with
Time-gated or TCSPC systems with different gate configurations (gate
numbers, total detection time) by phasor approach. The sampling and
truncation of decay curves due to limited number of gates is considered
here. The method is described in Fereidouni et. al, Journal of
Microscopy.Download the package and extract the zip file in the ImageJ
plugin folder : "X:\\Program Files\\ImageJ\\plugins folder". X is the
drive where the ImageJ is installed. Then Download the sample images.
![](/plugin/analysis/time_gated_phasor/time_gated_phasor.zip)
![](/plugin/analysis/time_gated_phasor/images.zip) If you restart ImageJ
in the Plugins menu two "Phasor to image" and "Time gated phasor" will
be added.

![](/plugin/analysis/time_gated_phasor/11.png)

After selecting the Timegatedphasor from plugins menu, a dialogue window
will appear. In "Threshold" text box as the name imply you can enter the
value for thresholding the pixels to remove them from analysis. In the
"Total window" you can enter the total detection time which by default
is set to 8ns which is the detection window for LIMO. "Background" is
the value to be subtracted from the pixels value. "Phasor Dimension" is
to choose the initial dimension for the phasor plot. Smaller plot you
choose, denser points you get and more contrast in color density. To
start with the plugin we need to do some calibrations. It is for taking
into account the instrument response effect. This can be done by any
sample with known single exponential decay. You can Enter the lifetime
of your reference sample in "reference Lifetime" textbox". Single
exponential" checkbox is to find the average lifetime of the whole image
and the "Pixel by Pixel" check box allows you to estimate the average
lifetime in each pixel. To start we need to do a calibration. Open the
Green.tif image and then click the Timegatedphasor from Plugins menu.
Check the "Calibration" and in the Reference lifetime textbox enter
"4.66" and then press the OK button.

![](/plugin/analysis/time_gated_phasor/2.png)

Now open the "Alexa 488-555.tif" file and select the Timegatedphasor
from plugins menu. Press OK button. The phasor plot, lifetimes of Alexa
488, and Alexa 555 and the unmixed images and their overlay will be
shown.

![](/plugin/analysis/time_gated_phasor/3.png)

If you want to find the pixel by pixel life time after selecting the
Timegatedphasor from Plugins menu check the "pixel by pixel" and press
the OK button. The phasor plot and pixel by pixel lifetime image will be
shown. you can change the color of lifetime image using different lookup
tables. The result of pixel by pixel lifetime estimation for "Green.tif"
is shown below. ![](/plugin/analysis/time_gated_phasor/4.png) it is also
possible to select a ROI in the phasor plot to find the correlated part
of the original image. Select a ROI in the phasor plot and select the
"Phasor to image" from Plugins menu. Two regions from "Alexa
488-555.tif" phasor are selected and the correlated pixeles are shown
also.

![](/plugin/analysis/time_gated_phasor/5.png)

HOW TO CITE:

FEREIDOUNI, F., ESPOSITO, A., BLAB, G.A. and GERRITSEN, H.C. (2011), A
modified phasor approach for analyzing time-gated fluorescence lifetime
images. Journal of Microscopy, 244: 248--258. doi:
10.1111/j.1365-2818.2011.03533.x

Authors:

                       Farzad Fereidouni farzad.feraidounie@gmail.com
                       Gerhard Blab          
