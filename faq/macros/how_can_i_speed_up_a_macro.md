# FAQ: How can I speed up a macro?

**Are there any ways to make the macros run faster?**

Macros are interpreted scripts. Some macro functions that change the
pixel data (such as image operations, filtering, etc) after completed,
they update the image to show the result. This update takes some time to
process. Once a macro has been written and debugged, showing the results
of any intermediary steps is not critical to the results (unless the
macro expects user interaction), so avoiding unecessary image updates
may speed up the processing.\
There is a useful macro function that sets the interpreter in **batch
mode**. This stops the display of images between the calls, speeding up
macro execution by up to 20 times:

    setBatchMode(true); //batch mode on
    //
    // your code goes here...
    // 
    setBatchMode(false); //exit batch mode

When the macro exits the batch mode (using ***setBatchMode(false);*** )
the macro displays the active image in a new window. Make sure that the
final result is the active image (you can use either
***selectWindow(\"your_image\");*** or
***selectImage(\"your_image\");*** for this).

Before exiting batch mode it is not necessary to close any open images
because they will be closed automatically (except the active image which
is shown in a new window).

Alternatively, calling the function with the argument:

    setBatchMode(&quot;exit &amp; display&quot;);

exits batch mode and displays **all** images that exist (but were not
shown).
