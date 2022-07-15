## Line Lab selective median filtering

### Description

This plugin remove anormal noisy pixels. It works in Lab color space (32
bits \[float\] per pixel channel ). On the attached sample picture, when
luminance (channel L) fall, it produce noise on chrominance channels (a
and b). This plugin detect luminance falls and, at this moment, remove
noise on channels a and b by median filtering.

(This below noisy pixels are observed on a small outdoor camera)

![image_detail_filtrage.png](/plugin/filter/line_lab_selective_median_filtering/image_detail_filtrage.png){width="800"}

### Usage

1.  To use this filter, you must first (step 1) convert your RGB image
    to Lab space color with this plugin : [Converting RGB to
    Lab](http://imagejdocu.tudor.lu/doku.php?id=plugin:color:conversions_between_rgb_color_space_and_lab_color_space:start)
2.  Then, use this filter (step 2)
3.  Finally, convert back the Lab space color image to RGB (step 3) with
    this plugin : [Converting Lab to
    RGB](http://imagejdocu.tudor.lu/doku.php?id=plugin:color:conversions_between_rgb_color_space_and_lab_color_space:start)

![image_explicative.png](/plugin/filter/line_lab_selective_median_filtering/image_explicative.png){width="800"}

### Example

  -------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------
  ![](/plugin/filter/line_lab_selective_median_filtering/2009-10-27_09_45_46_02panorama-small.png)   ![](/plugin/filter/line_lab_selective_median_filtering/2009-10-27_09_45_46_02panorama-small_pics_rvb_corriges.png)
  Original                                                                                           Filtered
  -------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------

### Plugin download

![](/plugin/filter/line_lab_selective_median_filtering/line_lab_selective_median_filtering_v1_00.jar)

It use no additionnal libraries.

### Plugin installation

Copy the .jar file to your plugins directory and restart \"ImageJ\".

You can use the script by menu \"ImageJ / Plugins / Image/ Color / Line
Lab selective median filtering (v1.00)\".

### Source files

![](/plugin/filter/line_lab_selective_median_filtering/line_lab_selective_median_filtering_v1_00.zip)

### Author

Vincent Vansuyt.

Contact me for any questions or suggestions : vincent dot vansuyt at edf
dot fr (preferred language : french)

### License

GPL distribution (see [licence](http://www.gnu.org/licenses/) ).

### Changelog

First version

### Know bugs

None

### See also

-   [start](/plugin/color/conversions_between_rgb_color_space_and_lab_color_space/start)
-   [start](/plugin/filter/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood/start)
-   [start](/plugin/analysis/Find_min_max/start)
-   [start](/plugin/color/set_min_and_max_values_for_lut/start)
