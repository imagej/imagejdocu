# New\...

**Opens a dialog to create a new text file macro, text file, or a plugin
of one of the three types of supported by ImageJ (Plugin, Plugin Filter,
Plugin Frame).**

**Macro**: opens an new text file. The window a menu called **Macros**
that lets you run, evaluate, abort or install it.\
**Plugin**: Opens, captures or generates images. Implements the PlugIn
interface. The prototype displays \"Hello world!\" in the ImageJ window.
Another example is the Step Maker plugin at
<http://rsb.info.nih.gov/ij/plugins/steps.html>.\
**Plugin Filter**: Processes the active image. Implements the
PlugInFilter interface. The prototype inverts the active image twice.
Another example is the Image Inverter plugin at
<http://rsb.info.nih.gov/ij/plugins/inverter.html>.\
**Plugin Frame**: Displays a nonimage window containing controls such as
buttons and sliders. Extends the PlugInFrame class. The prototype opens
a window containing a text area. Another example is the IP Demo plugin
at <http://rsb.info.nih.gov/ij/plugins/ip-demo.html>.

The text windows created by this command has two menus: **File**,
**Edit** and **Font**. Use **Compile and Run** in the **File** menu to
compile and run the plugin. The **Edit** menu does not contain
**Cut/Copy/Paste** but the keyboard shortcuts for these function can be
used. Note that the name you choose for the plugin must include at least
one underscore.\
Use **Zap Gremlins** to find and delete extraneous non-code characters
(these sometimes appear when cutting and pasting from another sources,
for example email messages or some editors.

\
