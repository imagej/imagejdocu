## Conversions between RGB color space and Lab color space

### Description

This plugin allow conversion between RGB color space (8 bits per pixel
chanel) and Lab color space (32 bits \[float\] per pixel channel )

### Converting RGB to Lab

It convert a RGB image to a new image-stack containing 3 slices L,a,b.

In the ImageJ menu, choose \"Plugin / Image / Color / Convert RGB image
to Lab color stack v1.00\"

![](/plugin/color/conversions_between_rgb_color_space_and_lab_color_space/RGB_to_Lab.png){width="1000"}

### Converting Lab to RGB

Convert a Lab stack image to a new RGB image.

In the ImageJ plugin, choose \"Plugin / Image / Color / Convert Lab
stack to RGB image v1.00\"

![](/plugin/color/conversions_between_rgb_color_space_and_lab_color_space/Lab_to_RGB.png){width="1000"}

### Lab space

From luminance 0 -\> black to luminance 100 -\> white

![Espace Lab
(summary)](/plugin/color/conversions_between_rgb_color_space_and_lab_color_space/lab_values.png){width="800"}

### Plugin download

![](/plugin/color/conversions_between_rgb_color_space_and_lab_color_space/Conversions_between_Lab_stack_and_RGB_image_v1_00.jar)

It use no additionnal libraries.

### Plugin installation

Copy the .jar file to your plugins directory and restart \"ImageJ\".

You can use the script by menu :

-   \"ImageJ / Plugins / Image / Color / Convert Lab stack to RGB
    image\"
-   \"ImageJ / Plugins / Image/ Color / Convert RGB image to Lab color
    stack\"

### Source files

![](/plugin/color/conversions_between_rgb_color_space_and_lab_color_space/conversions_between_lab_stack_and_rgb_image_v1_00-src.zip)

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

In Lab color space, you can use these filter plugins before converting
again to RGB color space :

    *[[plugin:filter:line_lab_selective_median_filtering:start]]
    *[[plugin:filter:lab_nonlocal_mean_with_same_pixel_luminance_neighborhood:start]]
    *[[plugin:analysis:Find_min_max:start]]
    *[[plugin:color:set_min_and_max_values_for_lut:start]]
