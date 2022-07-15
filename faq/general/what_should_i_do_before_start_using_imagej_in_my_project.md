# FAQ: What should I do before start using ImageJ in my project?

**This section is dedicated to new users just starting with imaging in
the hope that it will help save time and resources.**

There are quite a few things that you can do.\

1.  **Install** ImageJ, read the documentation available, the tutorials
    in the web and play a bit with the program. Have a look at the
    [Built-in Macro
    Functions](http://rsbweb.nih.gov/ij/developer/macro/functions.html)
    and get used to the Macro Recorder (go to
    **Plugins\>Macros\>Record\...**) to learn how to create macros while
    using the GUI and how to call the different functions of the
    program.
2.  **Update** to the latest version. **The installations downloaded
    from the ImageJ site do not necessarily contain the latest bug
    fixes**. Please read [this FAQ](how-do-i-update-imagej) (How do I
    update ImageJ).\
    - One can save a lot of time by **planning** a project **before**
    even starting to collect images. Image capture is sometimes very
    time consuming compared to some of the automated analyses ImageJ can
    do, so making sure that you got the right type of image is a great
    start.\
    While image processing is very powerful and can do wonderful things,
    there is always a limit of what can be achieved. Sometimes it is not
    possible to convert poor quality images into good quality, reliable
    results (for instance object segmentation commonly depends on image
    type and quality). It is advisable to spend some time testing and
    organising how image capture is going to proceed before embarking
    into a large scale data collection.
3.  Do yourself a great favour and **do not use lossy-compressed
    images**. JPEG compression is good to store digital pictures for the
    Web because they are small, but it is **not good at all** to do
    serious imaging. JPEG compression throws away information that the
    eye does not see, but ImageJ will, so there is a good chance of
    ending up measuring artifacts instead of data (especially when
    analysing textures and pixel intensities). This situation is,
    however, avoidable: while most digital cameras save in JPEG format
    by default, it is likely that they can also save images in some
    non-lossy format (such as TIFF or a custom RAW format). Use those
    formats instead, you can convert them later to TIFF (compressed or
    uncompressed) or PNG (which was designed to achieve non-lossy
    compression). Be aware that once an image has been saved as
    compressed JPEG there is no way of reverting to the original (so an
    old JPEG-compressed image saved again as TIFF still contains all the
    JPEG compression artifacts of the original).\
    If you do not believe that the artifacts are there, take an RGB
    JPEG-compressed image, convert it to HSB and then take a look at the
    blockiness especially of the Hue channel :-O .\
    ![\|jpeg artifacts
    hsb](/{{/image_processing_imagej_documenation_wiki/monalisa-jpeg.png)\
    *From left to right: Jpeg compressed RGB image (original 100x155
    pixels), the Hue channel, the Saturation channel and the Brightness
    channel.*\
    \
    If your papers get rejected because the referees don\'t like image
    analysis on JPEGs, don\'t complain!
4.  Think in advance what **image resolution** is required to analyse
    the objects of interest and whether the microscope and camera
    resolutions can provide that. While **magnification** is how much
    bigger than the original the sample appears under the microscope,
    **resolution** is the ability to distinguish between two points on
    an image (giving the amount of detail that can be observed). Many
    modern digital cameras used for microscopy can digitise more detail
    than the microscope objective resolution (this is given by the
    objective\'s *numerical aperture*), so \"high resolution\" digital
    images may not contain the level of detail one thinks they do (this
    is called *empty magnification*). Dealing with unnecessarily large
    images will affect processing time and memory requirements. Some
    plugins may not run on very large images. So, if you are doing
    microscopy, find out the resolution of each of your objectives to
    avoid processing images with empty magnification.\
    - If you are doing bright-field microscopy, make sure that you do
    **background illumination correction** **while acquiring**. A method
    to correct uneven background illumination is described in detail in
    [this
    FAQ](..//how-to/how-to-correct-background-illumination-in-brightfield-microscopy)).
    Note that after acquisition, this type of correction cannot be
    easily applied because it is based on the illumination settings of
    your microscope at the time of image capture.\
    - There is a friendly mailing list where one can ask questions, but
    it may save some of your time to **first search the [mail
    archive](https://list.nih.gov/archives/imagej.html).** It is very
    likely that your question or a similar one may have been answered in
    the past.
5.  \*\* Look at the collection of plugins and macros already
    available.\*\* There is a large number of plugins, many of these are
    really excellent. Whatever you want to do, it may have been done
    before, so there is a chance that a plugin or macro already exists.

Good luck with your project. When you come up with some interesting
macros or plugins, please share them with the rest of the community!
