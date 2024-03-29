# ImageJ performance tuning

## General settings of the Garbage Collector

**(1)** if your CPU is multicore, you will benefit a lot from running
garbage collection in parallel with the -Xincgc flag (incremental
garbage collection).\
\
**(2)** disable explicit calls to the garbage collection, which may
result in very long pauses. Simply add the -XX:+DisableExplicitGC flag.\
\
See below on how to set such flags for each operating system.\
\
**A note for plugin developers:** it is a current myth that calling
System.gc() in java applications has any effect on making more memory
available to the program. Such effect finished with java version 1.2,
nearly 10 years ago. Without calling System.gc(), when there are no more
pointers to a specific chunk of memory, any new memory allocations that
require a larger memory than is currently reported by IJ.maxMemory() -
IJ.currentMemory() will in fact use unclaimed memory regions which are
still counted within IJ.currentMemory(). So the reading of
IJ.currentMemory() is MISLEADING.\
\
In addition, calling Runtime.runFinalization() will incur in a severe
performance drag, bringing ImageJ to a halt until the method returns; in
the case of having loaded plenty of images which are no longer
referenced to, such halt can be several seconds or even minutes. There
is no need whatsoever to call such method, since automatic garbage
collection will take proper care to finalize objects when necessary.\
\
All your plugin should care about regarding memory is to not keep
pointers to chunks of memory, such as images, that are no longer needed.
If you really need to load a lot of images, consider storing their file
paths only, and reload them on demand without ever keeping pointers to
many images at the same time. The VirtualStack classes will do this for
you automatically.\
\
When using VirtualStack, every time you call getProcessor() on it the
image file behind that processor will be loaded; it is advisable then to
store the ImageProcessor pointer temporarily to avoid repeated calls to
getProcessor(), and work with the pixels array directly. When moving to
the next slice of the virtual stack and thus the next call to
getProcessor(), just release or overwrite the pointer to the previous
one.\

## General Recommendations

\*\*Avoid swapping: **all modern operating systems, and particularly
MacOSX, have a tendency to swap a lot. If you are using ImageJ heavily
such as in working with lots of images at the same time, refrain from
switching to another application while doing so.\
\
**Use the newest java available:\*\* when it comes to imaging, java
1.6.0 is a huge improvement over any other java versions. The internal
graphics engine has been nearly fully rewritten to automatically
hardware-accelerate many imaging tasks.\
Be sure to check the menu \"Plugins - Utilities - ImageJ
Properties\...\" to check which \"java.version\" you are using. If it\'s
1.5.0 or lower, upgrade the java system and make sure that the ImageJ
launcher script is using the newly downloaded one by checking the ImageJ
Properties again.\
\
**On the maximum amount of memory:** for 32-bit systems this means 1700m
(anything higher will crash your machine); for 64-bit systems it is
unlikely that you\'ll have enough RAM to hit the top limit any time soon
(so, as high as you want, according to recommendations below.)\
There is an official guide for 64-bit ImageJ at:\
For Windows: http:*rsb.info.nih.gov/ij/docs/install/windows.html#w64\
For MacOSX: http:*rsb.info.nih.gov/ij/docs/install/osx.html#memory64\
Linux users just need to change the JVM to which the launcher script
points to.\

## MacOSX:

**Memory:** don\'t use ever more than 70% of what the machine has.
Otherwise, paging may kick in rather quickly and bring ImageJ to a near
halt.\
How to adjust memory: from within ImageJ, go to the menu \"Edit -
Options - Memory and Threads\" \... and set the number of megabytes to
70% of your current RAM. You may also set the value directly on the
VMOptions key in Info.plist (see below).\
How to find out how much RAM your system has: click on the apple menu
and choose \"About this mac\". In the small window that opens, the
amount of memory is listed, in either gigabytes (Gb) or megabytes (Mb).\
Also: **be aware that most MacOSX are 32-bit**, and thus the java
virtual machine supports up to 1700 megabytes of memory only.\
As of December 19, 2007, there is a java 1.6.0 64-bit package for MacOSX
10.5 Leopard ONLY, which is downloadable from Apple Developer Connection
website. This release will enable you to use more than just 1.7 Gb of
maximum memory.\
\
As of December 2007, Apple has made available a 64-bit java 5.0 and 6.0
releases only for intel machines. Check Wayne Rasband\'s OSX 64-bit
webpage for details on how to run ImageJ in MacOSX without the 32-bit
RAM
limitations:<http://rsb.info.nih.gov/ij/docs/install/osx.html#memory64>\
\
**Editing the ImageJ application preferences file:**\
To set the above options, control-click on the ImageJ icon in the
Finder, select \"Show package contents\" and edit the Info.plist file.
Search at the bottom of the file for the key \"VMOptions\" and add it
there, after any -Xmx statement.\
For example, for a machine with 2Gb of RAM:\

    &lt;key&gt;VMOptions&lt;/key&gt;
    &lt;string&gt;-Xms32m -Xmx1500m -Xincgc -XX:+DisableExplicitGC&lt;/string&gt;

## Linux distributions:

**Memory:** set the maximum memory as high as possible. In my
experience, when planning to get the maximum out of ImageJ, the best
setting for the -Xmx value is 99% of the exisiting RAM.\
\
An example launcher script:\

    /usr/local/jdk1.6.0/bin/java -Xms32m -Xmx1500m -Xincgc -XX:+DisableExplicitGC -classpath $(find . -name &quot;*.jar&quot; -printf &quot;%h%f:&quot;). ij.ImageJ

Above, the classpath will include all jars inside ImageJ\'s directory,
which helps a lot for plugins to find their dependencies.

## Windows:

\
\*\*Memory: \*\*the memory setting is automatically set for you when
launching ImageJ, and is already optimized for your system. Like in
MacOSX, manually setting the maximum memory flag -Xmx to a value over
70% of the total available memory will result in excessive swapping and
thus slow ImageJ execution.\
\
An example launcher script:\

    C:\ImageJ\jre\bin\java.exe -Xms32m -Xmx1500m -Xincgc -XX:+DisableExplicitGC -jar ij.jar

\
There are systems out there that hack windows internals to allow more
than 1700 megabytes of memory to be used in 32-bit systems.\
For example the JRockit JVM enables usage of up to 3000m (3Gb, the
maximum that Windows 32-bit can recognize). See
<http://dev2dev.bea.com/blog/hstahl/archive/2005/12/how_to_get_almo.html>
to see how to do it, and then point ImageJ to the JRockit JVM java.exe\
(thanks to Aryeh Weiss for reporting on this
<https://list.nih.gov/cgi-bin/wa?A2=ind0712&L=IMAGEJ&H=1&I=-3&m=17615&P=2083>).\
\
Check Wayne Rasband\'s official 64-bit guide for Windows:
http://rsb.info.nih.gov/ij/docs/install/windows.html#w64\
