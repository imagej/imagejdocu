# ImageJVI

[ImageJVI](http://www.imagejvi.org/) is a free ImageJ plugin used to
open LabVIEW VIs (Virtual Instruments). VIs opened using ImageJVI can
communicate directly with ImageJ, offering a simple way to pass images,
settings, and other information.

## Introduction

ImageJVI is an ImageJ plugin created in March, 2012, by Mad City Labs, a
U.S. manufacturer of nanopositioning systems and nanoscale
instrumentation. ImageJVI adds an item to ImageJ\'s Plugins menu that
opens VIs (Virtual Instruments) built using National Instrument\'s
LabVIEW development environment. VIs opened using ImageJVI are added to
ImageJ\'s WindowManager, making them accessible to user-generated Java
plugins, Beanscript, or macro code. For LabVIEW developers who cannot
write their own ImageJ plugins, ImageJVI can be configured to
automatically grab images from LabVIEW and open them in ImageJ.

ImageJVI is owned, maintaned, and provided for free by Mad City Labs.
The latest version of ImageJVI can be downloaded
[here](http://www.imagejvi.org/index.php/installation.html) from the
ImageJVI website (wwww.ImageJ.org)

![imagejvi.jpg](/plugin/acquisition/imagejvi/imagejvi.jpg){.align-center
width="335" height="278"}

## Benefits

#### Control your VI from Java

ImageJVI enables you to control your VI from Java using only standard
[java.awt](http://docs.oracle.com/javase/1.4.2/docs/api/java/awt/package-summary.html)
classes and methods. VIs opened using ImageJVI are added as Java Frames
([java.awt.Frame](http://docs.oracle.com/javase/1.4.2/docs/api/java/awt/Frame.html))
to ImageJ\'s WindowManager
([ij.WindowManager](http://rsbweb.nih.gov/ij/developer/api/ij/WindowManager.html)),
an object that holds references to Frames, or \"Windows\", controlled by
ImageJ. User-generated plugins can grab a reference to a VI that has
been opened using ImageJVI using the
[WindowManager.getFrame()](http://rsbweb.nih.gov/ij/developer/api/ij/WindowManager.html#getFrame(java.lang.String))
method. VI references can be used to get or set values of the VI\'s
components, to run, stop, or close the VI, or to perform various other
familiar Windows functions. More information, and code samples, can be
found in the document \"[Using
ImageJVI](http://www.imagejvi.org/images/using%20imagejvi.pdf)\",
available on the ImageJVI website
([wwww.ImageJ.org](http://www.imagejvi.org)).

#### Seamless image acquisition

ImageJVI will automatically transfer images you take in LabVIEW to
ImageJ. No actual "coding" is required to enable this feature, ImageJVI
knows which values to transfer by the names you give your LabVIEW
components. Similarly, you can signal ImageJVI to transfer images, or to
perform other actions, by giving special names to Boolean components
used in your VI. Detailed instructions, and a table of recognized names,
can be found in the document \"[Using
ImageJVI](http://www.imagejvi.org/images/using%20imagejvi.pdf)\",
available on the ImageJVI website
([wwww.ImageJ.org](http://www.imagejvi.org)).

## Contact Information

For inquiries regarding feature requests, bug reports, general
questions, or anything else related ImageJVI, please direct emails to:

* matt@imagejvi.org *
