## Chow and Kaneko binarization

### Description

This plugin perform a binarization using Chow and Kaneko algorithm.

This plugin binarize a grayscale image using a threshold map. Local
thresholds are calculated on a grid by Otsu method and interpolated to
the full-size image.

### Plugin example

Original image / Plugin calculated local thresholds / Plugin result
(grid size : 16 pixels).

![Original
image](/plugin/segmentation/chow_and_kaneko_binarization/automatic_thresholding_original_8bits.png){width="250"}
![Plugin calculated local
thresholds](/plugin/segmentation/chow_and_kaneko_binarization/binarized_picture_bloc_size_16-threshold_map.png){width="250"}
![Plugin result (bloc size
16)](/plugin/segmentation/chow_and_kaneko_binarization/binarized_picture_bloc_size_16.png){width="250"}

### Other plugins examples

Results with ImageJ existing (2013/01/17) auto local theshold methods
(Bernsen, Mean, Median, MidGrey, NiBlack et Sauvola \[rayon:15\]) :

![auto_local_thresholding_rayon_15_imagej.png](/plugin/segmentation/chow_and_kaneko_binarization/auto_local_thresholding_rayon_15_imagej.png){width="750"}

### Plugin download

![binarization_chow_and_kaneko.jar
v1.00](/plugin/segmentation/chow_and_kaneko_binarization/binarization_chow_and_kaneko.jar)

### Plugin installation

Copy the .jar file to your plugins directory and restart \"ImageJ\".

You can use the script by menu \"ImageJ / Adjust / Chow and Kaneko
binarization\"

### Source files

![](/plugin/segmentation/chow_and_kaneko_binarization/binarization_chow_and_kaneko-src.zip)

### License

GPL distribution (see [licence](http://www.gnu.org/licenses/) ). Sources
for plugins are available freely. Sources for core are available on
request.

### Author

Vincent Vansuyt.

Contact me for any questions or suggestions : vincent dot vansuyt at edf
dot fr (preferred language : french)

### Changelog

First version

### Know bugs

None
