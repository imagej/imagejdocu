# Hysteresis thresholding

**Thresholding by two thresholds for edge detection.**

This plugin performs a hysteresis thresholding for edge detection using
two thresholds. Low thresholded edges which are connected to high
thresholded edges are retained. Low thresholded edges which are non
connected to high thresholded edges are removed.

This leads to the creation of 3 classes : below low threshold (to be
removed), above high threshold (to be retained), and between low and
high thresholds (to be retained only if connected to a edge above high
threshold).

Download
![](/plugin/segmentation/hysteresis_thresholding/hysteresis_.class) to
your plugins directory and then restart ImageJ or use the Update Menus
command.

The source code is also available :
![](/plugin/segmentation/hysteresis_thresholding/hysteresis_.java)

![Boats canny-deriche edge detection Boats canny-deriche edge
detection](/plugin/segmentation/hysteresis_thresholding/canny-deriche.jpeg){width="300"
height="200"} ![Boats with simple
thresholding](/plugin/segmentation/hysteresis_thresholding/simple.jpeg){width="300"
height="200"}

![Boats with double
thresholding](/plugin/segmentation/hysteresis_thresholding/double-tresholding.jpeg){width="300"
height="200"} ![Boats with hysteresis
thresholding](/plugin/segmentation/hysteresis_thresholding/hysteresis-thresholding.jpeg){width="300"
height="200"}

Contact me for any questions or suggestions :
![](/plugin/segmentation/hysteresis_thresholding/email.png)
