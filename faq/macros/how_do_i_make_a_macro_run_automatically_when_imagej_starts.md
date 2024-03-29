# FAQ: How do I make a macro run automatically when ImageJ starts?

**I want to run a macro automatically each time that ImageJ starts. How
do I do it?**

Include your macro code in the **AutoRun** macro, which is in the
**StartupMacros.txt** file (this file is located in the
*/ImageJ/macros*/ folder).

**Note:** if you distribute your macros and used the method above to set
default options, then other users have to know your Autorun settings,
otherwise, their defaults will be different and the macro may not run as
intended.

One possible solution is to paste the AutoRun set of commands at the
start of your macro. The disadvantage is that this may override the
current settings of the other users without them knowing.

Two macro commands

    saveSettings();

and\

    restoreSettings();

may be useful to save the current state of IJ:

1.  add \*\*saveSettings(); \*\*as the first command of the macro to
    save the (other) user settings,
2.  then add your **AutoRun** commands (so the defaults in the user
    machine are the same as in yours),
3.  then add **your macro commands**, and
4.  finally restore the user original settings with
    **restoreSettings();** at the end of the macro.
