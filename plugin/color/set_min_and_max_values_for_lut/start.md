## Set minimum and maximum values for LUT

### Introduction

This plugin allow to set min and max value of selected image. It allow
too, to reset LUT to black to white gradient.

### Usage

This plugin is useful to choose same LUT configuration to compare
original picture with its filtered copy.

![](/plugin/color/set_min_and_max_values_for_lut/interface.png)

On the two below pictures, you can see an original picture and its
filtered copy in 32 bits float format. These images use LUT color table,
but their colors settings are differents, and it is difficult to compare
it\...

![](/plugin/color/set_min_and_max_values_for_lut/explication_avant.png)

With the [start](/plugin/analysis/Find_min_max/start) plugin, it is easy
to find minimum and maximum LUT settings, and this plugin allow to set
the same minimum and maximum value to the both picture, and compare
it\...

![](/plugin/color/set_min_and_max_values_for_lut/explication_apres.png)

### Plugin download

![](/plugin/color/set_min_and_max_values_for_lut/set_min_and_max_values_for_lut_v1_00.jar)

### Plugin installation

Copy the .jar file to your plugins directory and restart "ImageJ".

You can use the script by menu "ImageJ / Plugins / Image / Color / Set
min and max value for LUT (v1.00)".

### Source files

![](/plugin/color/set_min_and_max_values_for_lut/set_min_and_max_values_for_lut_v1_00.zip)

### Author

Vincent Vansuyt

Contact me for any questions or suggestions : vincent dot vansuyt at edf
dot fr (preferred language : french)

### License

GPL distribution (see [licence](http://www.gnu.org/licenses/) ).

### Changelog

First version

### Know bugs

None

### See also

-   [start](/plugin/analysis/Find_min_max/start)
-   [start](/plugin/filter/line_lab_selective_median_filtering/start)
-   [start](/plugin/filter/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood/start)
