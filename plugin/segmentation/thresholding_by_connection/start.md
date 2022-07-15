# Thresholding by connection

**This plugin performs a thresholding by connecting pixels**

This plugin performs a connection thresholding (inspired by [hysteresis
thresholding for edge
detection](/plugin/segmentation/hysteresis_thresholding/start)).
Thresholded pixels are displayed in red, pixels with values lower than
the minimum threshold by a fixed value are displayed in blue, pixels
with values higher than the maximum threshold value by a fixed value are
displayed in green. Blue and green pixels connected to red pixels will
be set to thresholded.

Download
![](/plugin/segmentation/thresholding_by_connection/connectionthresholding_.class)
and
![](/plugin/segmentation/thresholding_by_connection/thresholdplot.class)
to your plugins directory and then restart ImageJ or use the Update
Menus command. You need at least ij.jar v1.37 ([how to
update](/faq/technical/how_do_i_update_imagej)).

The source code is also available :
![](/plugin/segmentation/thresholding_by_connection/connectionthresholding_.java)

![blobs](/plugin/segmentation/thresholding_by_connection/blobs.jpeg)
![blobs
colored](/plugin/segmentation/thresholding_by_connection/blobs_colored.jpeg)

![blobs
multi](/plugin/segmentation/thresholding_by_connection/blobs_multi.jpeg)
![blobs with connected
thresholding](/plugin/segmentation/thresholding_by_connection/blobs_connected.jpeg)

Contact me for any questions or suggestions
![](/plugin/segmentation/thresholding_by_connection/email.png)
