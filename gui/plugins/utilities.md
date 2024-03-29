# Utilites

**This submenu lists a number of useful utilities.**

### Control Panel\...

This command opens a window containing ImageJ commands in a hierarchical
tree structure. Click on a leaf node to launch the corresponding ImageJ
command (or plugin). Double-click on a tree branch node (folder) to
expand or collapse it. Click and drag on a tree branch node (folder) to
display its descendants in a separate (child) window. In a child window,
click on \"Show Parent\"to re-open the parent window. The Control Panel
was contributed to the ImageJ project by Cezar M. Tigaret.

![ImageJ Control
Panel](http://rsb.info.nih.gov/ij/docs/images/cp.jpg){.align-center
width="410" height="306"}

### ImageJ Properties\...

This commands writes a nymber of ImageJ properties (Java version, OS
name and version, files , path and line separators, location of
directories, screen size, etc) to a text window.

### List Commands\...

This commands produces a list in a text file of all commands available
in ImageJ and the plugins they call.

### List Shortcuts\...

This commands produces a list (in a text window) of some of the keyboard
shortcuts available in ImageJ and the command they call. For the
comprehensive list, please see [here](/keyboard/overview).

### Threads\...

This commands shows in a text window the currents threads running and
their priorities.

### Benchmark

This runs a benchmarking macro that performs a number of imaging
procedures. The benchmark is reported in the status bar. This gives you
an idea of the performance of your current setup.

### Reset

This command allows to reset ***Locked Image***s, the ***Clipboard*** or
the ***Undo Buffer***, depending on the option chosen.\
Some plugins or procedures lock temporarily the images to guarantee that
they are not being modified by other procedures. If for some reason
there is an error or interruption in a plugin/macro, the images could
remain locked. The **Locked Image** command unlocks those images.

### Monitor Memory\...

Displays a continuously updated graph of ImageJ\'s memory utilization,
which can be useful for detecting memory leaks. Ideally you should be
able to open a several images, process them, close them, and the amount
of memory used will be the same as when you started. Clicking on
ImageJ\'s status bar, which forces the Java garbage collector run, may
help reclaim unused memory. Start the memory monitor with the alt key
down to have it use a 640x480 window that simulates how a frame grabber
plugin would work.

![Memory Monitor
Window](http://rsb.info.nih.gov/ij/docs/images/monitor.gif){.align-center
width="239" height="155"}

### Search\...

Searches recursively for a particular string (case sensitive or not)
contained in the file names or in files in a chosen directory tree. The
result is reported in the Log window (if the **Search Contents** option
is checked, the line number where the string was found is also
reported). There is an option to search in the **Macros Folder**.

### Capture Screen

Copies the the screen to an RGB image and displays that image in a new
window. Pressing \*\*Control-Shift-g \*\*will capture the screen while a
modal dialog box is active if the dialog is based on ImageJ\'s
GenericDialog class. Requires Java 1.3 or later and ImageJ 1.32e or
later.

### Update ImageJ\...

Upgrades ImageJ to the latest ij.jar at
[rsb.info.nih.gov/ij/upgrade/](http://rsb.info.nih.gov/ij/upgrade/), or
downgrades to earlier versions of ImageJ. Select \"daily build\" from
the drop down menu and it will upgrade to the latest daily build at
[rsb.info.nih.gov/ij/ij.jar](http://rsb.info.nih.gov/ij/ij.jar).
