# FAQ: How do I set up ImageJ to deal with white particles (on a black background) by default?

**ImageJ can be set to deal with white particles on a black background
or black particles on a white background. The latter is the default. How
do I change that?**

Check the *Process\>Binary\>Options\>Black Background* option.

Once this is set, the **Make Binary** and **Convert to Mask** commands
will set the thresholded areas to white and the background to black
(without using the Inverted LUT). This option will also define what
pixels are eroded/dilated/opened/closed (regardless of their greyacale
values; note that when using the Inverted LUT, \"white\" has pixel value
\[0\] instead of \[255\]).\
It may be convenient also set the default foreground and background
colors with *Edit\>Options\>Colors\...*

To make these changes permanent (i.e. each time you run ImageJ), you can
use the *Plugins\>Macros\>Record\...* command to record these settings
and paste them in the **AutoRun** macro in the **StartupMacros.txt**
file (you find this file in the */ImageJ/macros*/ folder).

The macro would look like this:

    macro &quot;AutoRun&quot; {
    run(&quot;Options...&quot;, &quot;iterations=1 black count=1&quot;); //set black background
    run(&quot;Colors...&quot;, &quot;foreground=white background=black selection=yellow&quot;); //set colors
    run(&quot;Appearance...&quot;, &quot; &quot;); //do not use Inverting LUT
    //add more commands here if needed
    }

**Note:** if you distribute your macros and use the method above to set
default options, then other users have to know your Autorun settings,
otherwise, their defaults will be different and the macro may not run as
intended.

One possible solution is to paste the AutoRun set of commands at the
start of your macro. The disadvantage is that this may override the
current settings of the other users without them knowing.

Two macro commands:

    saveSettings();

and

    restoreSettings();

may be useful to save the current state of ImageJ:

1.  add \*\*saveSettings(); \*\*as the first command of the macro to
    save the other user settings,\
    - then add your **AutoRun** commands (so the defaults in the user
    machine are the same as in yours),
2.  then add **your macro commands**, and
3.  finally restore the user original settings with
    **restoreSettings();** at the end of the macro.
