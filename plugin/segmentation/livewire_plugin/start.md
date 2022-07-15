# LiveWire Plugin

**LiveWire is a technique for image segmentation based on the lowest
cost path from one pixel to another. One can use this technique to
select edges on an image so that some details of it may be highlighted.
Implemented by Daniel Lelis Baggio - Instituto Tecnologico de
Aeronautica**

## Official Page

Please follow up this page <http://ivussnakes.sourceforge.net/>

## Overview

The implementation is highly based on the article \"Intelligent Scissors
for Image Composition\" written by Eric N. Mortensen and William A.
Barrett, from Brigham Young University.\
This implementation was made in Java by [Daniel Lélis
Baggio](http://www.geocities.com/dannyxyz22/) from [Instituto
Tecnologico de Aeronautica](http://www.ita.br/), in a research made at
[InCor](http://www.incor.usp.br/)

## Download

To download the .jar file with the source files, you can access the
following [link](http://www.sourceforge.net/projects/ivussnakes).

## Install

This is a tool to be used inside ImageJ.

These installation instructions have been tried with [ImageJ
1.41o](http://rsb.info.nih.gov/ij/)

To install it, extract the jar (using your favorite extractor) to the
folder \"ImageJ/plugins/Tools\"

Notice that the CONTENTS of the .jar must be in the directory
\"ImageJ/plugins/Tools\" and not \"ImageJ/plugins/Tools/LiveWire/\".

So, you will see the plugins in places like
\"ImageJ/plugins/Tools/LiveWire1DTool\_.class\".

Then, you need to install the LiveWire buttons through a macro.

This is simple. Start ImageJ then, go to
\"Plugins-\>Macro\>Install\...\". Point to the extracted file:
\"ImageJ/plugins/Tools/LiveWire.txt\". This will install the LiveWire
buttons to ImageJ toolbar.

## How to use

After you have installed, you\'ll be able to use the LiveWire tool.
Click on the part of the image you want to start selecting and wait a
couple seconds. The LiveWire selection will automatically follow your
mouse. When you are ready with the next point, click it and keep going.
Right click to finish segmentation.

If you wanna start a new LiveWire, just finish the current one with the
right-click and start a new one with the left-click.\
To move existing points or add new points after you have finished the
selection, hold shift and click the handles or click outside them to add
new points.

![IVUS
image](http://ivussnakes.sourceforge.net/2points.gif){.align-center}\
\<html\>\<center\>Figure 1 - Sample of segmented simulated IVUS image -
thanks to Monica\</center\>\</html\>

## Feedback

Please, submit your bugs to this
[link](http://sourceforge.net/tracker/?group_id=171446&amp;atid=858012)

All feature requests may be sent
[here](http://sourceforge.net/tracker/?group_id=171446&amp;atid=858015).

Daniel Lélis Baggio would like to thank all the community for the
feedback and specially thank Fernando J. R. Sales and Sergio Furuie.

\-\-- *[Daniel Lelis Baggio](http://danielbaggio.blogspot.com)
2008/10/03 10:18*
