## Lab non-local mean with same pixel luminance neighborhood

### Description

Filter Lab stack image using a selective gaussian blur. It compute a
ponderated mean of in the neighborhood pixel. For each neighborhood
pixel \'q\' of computed pixel \'p\', the associated weight \'q\' is
computed with a gaussian function and the luminance difference between
luminance \'p\' and luminance \'q\'. If difference is zero, weight is 1.
If difference is bigger weight tend towards zero. Only chrominance
slices are filtered ( slices a and b ).

### Usage

1.  To use this filter, you must first (step 1) convert your RGB image
    to Lab space color with this plugin : [Converting RGB to
    Lab](http://imagejdocu.tudor.lu/doku.php?id=plugin:color:conversions_between_rgb_color_space_and_lab_color_space:start)
2.  Then, use this filter (step 2)
3.  Finally, convert back the Lab space color image to RGB (step 3) with
    this plugin : [Converting Lab to
    RGB](http://imagejdocu.tudor.lu/doku.php?id=plugin:color:conversions_between_rgb_color_space_and_lab_color_space:start)

![](/plugin/filter/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood/image_explicative.png){width="1000"}

NB:

-   This plugin works well after this other one :
    [start](/plugin/filter/line_lab_selective_median_filtering/start)

### Example

  ---------------------------------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
  ![Original](/plugin/filter/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood/2009-10-27_09_45_46_02panorama-small.png)                              ![Filtered](/plugin/filter/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood/2009-10-27_09_45_46_02panorama-small-filtree.png)
  Original                                                                                                                                                   Filtered
                                                                                                                                                             
  ![Original - saturated colors](/plugin/filter/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood/2009-10-27_09_45_46_02panorama-small-saturee.png)   ![Filtered](/plugin/filter/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood/2009-10-27_09_45_46_02panorama-small-filtree-saturee.png)
  Original - saturated colors                                                                                                                                Filtered
                                                                                                                                                             
  ---------------------------------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------

### Plugin download

![](/plugin/filter/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood_v1_01.jar)

It use no additionnal libraries.

### Plugin installation

Copy the .jar file to your plugins directory and restart \"ImageJ\".

You can use the script by menu \"ImageJ / Plugins / Image/ Color / Lab
non-local mean with same pixel luminance neighborhood (v1.00)\".

### Source files

![](/plugin/filter/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood/lab_nonlocal_mean_with_same_pixel_luminance_neighborhood_v1_01.zip)

### Author

Vincent Vansuyt.

Contact me for any questions or suggestions : vincent dot vansuyt at edf
dot fr (preferred language : french)

### License

GPL distribution (see [licence](http://www.gnu.org/licenses/) ).

### Changelog

Version v1.00 : first version

Version v1.01 :

-   adding timing
-   code improvement (40% faster)

### Know bugs

None

### See also

-   [start](/plugin/color/conversions_between_rgb_color_space_and_lab_color_space/start)
-   [start](/plugin/filter/line_lab_selective_median_filtering/start)
-   [start](/plugin/analysis/Find_min_max/start)
-   [start](/plugin/color/set_min_and_max_values_for_lut/start)
