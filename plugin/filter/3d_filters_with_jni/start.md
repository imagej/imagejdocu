# 3D Fast Filters with JNI

**A collection of filters for 3D images using Java Native Interface.**

# 3D filters

Performs various 3D filtering

JNI allows java to call codes written in others languages like C for
instance.\
This plugin perform various 3D filters on 8-bits or 16-bits gray-levels
stacks :

-   3D median
-   3D mean
-   3D minimum
-   3D maximum
-   3D maximum local
-   3D tophat (detect bright spots, *TH=I-max(min(I))* )

These C libraries are used by the [3D
filters](/plugin/filter/3d_filters/start) and replace slow version of
the above filters, this is particularly useful for TopHat filtering
involving large radii.

For **linux** copy either *libfilter3d32.so* for 32 bits or
*libfilter3d64.so* for 64 bits into your plugins directory.

For **Windows** copy either *libfilter3d32.dll* for 32 bits or
*libfilter3d64.dll* for 64 bits into your plugins directory.

For **Macintosh** copy either *libfilter3d32-mac.so* for 32 bits (rename
to *libfilter3d32.jnilib*) or *libfilter3d64-mac.so* for 64 bits (rename
to *libfilter3d64.jnilib*) into your plugins directory. (macintosh
libraries thanks to Eddie Ma).

![filters3d\_.h](/plugin/filter/3d_filters_with_jni/filters3d_.h) and
![filters3d\_.c](/plugin/filter/3d_filters_with_jni/filters3d_.c) are
the corresponding C files.

Note that the information will be displayed only in console windows (use
java instead of javaw in ImageJ.cfg).

All neighbourhood pixels are computed inside a ellipsoid corresponding
to the radii given as parameters.\

Contact me for any questions or suggestions :
![](/plugin/filter/3d_filters_with_jni/email.png)

![\*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1](/filelist&gt;/plugin/filter/3d_filters_with_jni/*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1)
