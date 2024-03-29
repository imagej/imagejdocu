# FAQ: How do I run ImageJ without a graphics environment (headless)?

**I want to run ImageJ on a cluster, by executing batch macros. To do
that, I use ssh to log on, but ImageJ throws an exception that it cannot
create a Menu in headless mode. What to do?**

There are at least two methods:

1.  Install a virtual framebuffer (Xvfb) if you are on Unix. On a Mac,
    this will not necessarily help.
2.  Use Fiji\'s [headless mode](http://fiji.sc/Headless) (available via
    the command-line option `--headless`.

**Technical explanation:**

ImageJ1 conflates the macro argument handling with the GUI that asks the
user for the values when not run in macro mode.

The problem is that font metrics require a graphical desktop. And even
when using GUI elements such as text fields that are never shown, the
font metrics are still required to calculate the layout.

Unfortunately, there seems to be no good way to solve that problem,
since even when the class Menus actually does not instantiate a
java.awt.Menu, most plugins still instantiate an ij.gui.GenericDialog,
which inherits from java.awt.Dialog. And because a couple of plugins use
the fact that the GenericDialog is derived from java.awt.Dialog to show
lists or previews, this design cannot be changed.

The workaround is to use replacements for ij.Menus and
ij.gui.GenericDialog, which were stripped of all GUI references. Of
course, this works for most, but not all, plugins, and only in headless
mode.
