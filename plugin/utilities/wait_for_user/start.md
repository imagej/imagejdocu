# Wait_For_User

**Ask for user intervention during a macro - e.g., allow the user to
select a ROI. Not needed with ImageJ 1.39r or later.**

![Wait_For_User
screenshot](/plugin/utilities/wait_for_user/waitforuser.jpeg){.align-center}

When called from a macro, this plugin halts the macro and displays a
dialog box asking for user intervention. The macro proceeds as soon as
the user clicks \"OK\".

The argument passed in the macro is displayed as a text in the dialog
box. Below this text, a line \"Thereafter, press OK\" and the OK button
are shown.

### Usage:

With ImageJ 1.39r or later, the Plugin is not needed. Use the [built-in
macro
command](http://rsb.info.nih.gov/ij/developer/macro/functions.html#W)
**waitForUser(\"Message\")** or**waitForUser(\"Title\", \"Message\")**.
Replace \"Title\" and \"Message\" with any text you like.

For older versions of ImageJ:

-   Copy
    ![Wait_For_User.java](/plugin/utilities/wait_for_user/wait_for_user.java)
    into the ImageJ plugins folder or a subfolder thereof.
-   Compile with \"Compile and run\" and press \"OK\". Disregard any
    deprecation warning.
-   Restart ImageJ.
-   Now the plugin is loaded into ImageJ and can be used in a macro.

### Sample macro

This macro asks the user to create a rectangular ROI in the image. Then,
the image is inverted inside this ROI.

\<code java\> run(\"Blobs (25K)\"); //open sample image myImageID =
getImageID(); //remember the image setTool(0); //Rectangle tool beep();
//alert the user run(\"Wait For User\", \"Select Rectangle to Invert\");
//wait for user action selectImage(myImageID); //make sure we have the
same foreground image again if (selectionType() != 0) //make sure we
have got a rectangular selection exit(\"Sorry, no rectangle\");
run(\"Invert\"); //invert the selection \</code\>

### Usage in a plugin

With ImageJ 1.39r or later, use the built-in WaitForUserDialog class:

\<code\>

    new WaitForUserDialog(&quot;Do something, then click OK.&quot;).show();

\</code\>

This will bring up a dialog window with Title \"Action Required\". You
can also use

\<code\>

    new WaitForUserDialog(&quot;Title&quot;, &quot;Do something, then click OK.&quot;).show();

\</code\>

for having a custom title (thanks to Wayne!).

Older ImageJ versions can use the following java code in a plugin:

\<code\>

    IJ.run(&quot;Wait For User&quot;,&quot;Select Rectangle to Invert&quot;);

\</code\>

This code requres that the Wait_For_User plugin is loaded and it must
appear somewhere in a menu (e.g. Plugins menu) as menu item \"Wait For
User\" (exactly like that).

\<code\> How to run it from another PlugIn? Posted by Dwight U
Bartholomew at 2008-01-24 23:29

I\'ve tried running it from another PlugIn (one that I\'m writing) but I
can\'t pass the TEXT message.

I\'ve tried using the expression IJ.runPlugIn(\"Wait_For_User\",
\"Please select a ROI\"); but that doesn\'t work. The only text I see is
\"Thereafter, press OK\". Well, it still waits for the User to perform
the ROI selection but I\'d really like the message to be more
informative.

I\'m suspecting the \"Wait_for_User\" is meant to be called from a
macro. Is there a modification to allow it to be run from another
PlugIn?

Dwight dwight.bartholomew@l-3com.com \</code\>

\<code\> Re: How to run it from another PlugIn? Posted by Michael Schmid
at 2008-01-25 15:53

IJ.runPlugIn passes the second argument as \'arg\', and not via
Macro.setOptions as a macro Thus you don\'t see the text. The following
should work (I have not tried): IJ.run((\"Wait_For_User\", \"Please
select a ROI\"); or Macro.setOptions(\"Please select a ROI\");
IJ.runPlugIn(\"Wait_For_User\",\"\"); \</code\>

\<code\> Re: How to run it from another PlugIn? Posted by Dwight U
Bartholomew at 2008-01-25 19:54

Thanks for the fast reply. I tried both methods and neither worked. The
first displays an ImageJ dialog box with \"Unrecognized command:
Wait_For_User\". The second displays the Wait_For_User box appears but
without the \"Please select a ROI\" string. \</code\>

\<code\> Re: How to run it from another PlugIn? Posted by Michael Schmid
at 2008-01-25 23:51

Sorry, the underscores were too much, it should be IJ.run((\"Wait For
User\", \"Please select a ROI\"); IJ.run(command, options) uses exactly
the same commands as you find in the menu, where the underscores are
replaced by spaces.

The alternative does not work because macro.getOptions returns the
options only while a macro is running. I should have tried it. \</code\>

\<code\> Why not simpler? Posted by Johannes Schindelin at 2008-01-25
02:56

Why not use a PlugIn instead, which calls ij.gui.MessageDialog?
\</code\>

\<code\> Why not simpler? Posted by Johannes Schindelin at 2008-01-25
02:56

Why not use a PlugIn instead, which calls ij.gui.MessageDialog?
\</code\>

\<code\> How to make it \"Always On Top\"? Posted by Dwight U
Bartholomew at 2008-02-01 20:08

I like the plugin and plan to use it but\...

If my image is large on the screen then the Wait_For_User window
disappears while I\'m selecting a new ROI and then I need to hunt for it
when I\'ve finished my ROI selection. Is there a way to make it \"always
on top\"? \</code\>

\<code\> Re: How to make it \"Always On Top\"? Posted by Michael Schmid
at 2008-02-01 20:52

Sorry, I have no really good idea. The only possibility I can think of
has the disadvantage that it works only as long as your only actions are
with the mouse in the foreground image. So it might be useful for
selecting a ROI, but not in the general case:

In the \"implements\" line add \", MouseListener\". After the line
super(\"User Action Required:\"); add the following; ImagePlus fgImp =
WindowManager.getCurrentImage(); if (fgImp != null) { ImageWindow fgWin
= fgImp.getWindow(); if (fgWin!=null) for (int i=0;
i\<fgWin.getComponentCount(); i++)
fgWin.getComponent(i).addMouseListener(this); }

And then somewhere near the end add: // MouseListener of foreground
image public void mousePressed (MouseEvent e) {
setFocusableWindowState(false); toFront(); } public void mouseExited
(MouseEvent e) {} public void mouseEntered (MouseEvent e) {} public void
mouseReleased (MouseEvent e) { setFocusableWindowState(true); toFront();
} public void mouseClicked (MouseEvent e) {} \</code\>

\<code\> Re: How to make it \"Always On Top\"? Posted by Dwight U
Bartholomew at 2008-02-02 02:33

Wow, the solution turned out to be really trivial\... at least on the
version of Java I\'m running.

I altered your Wait_For_User.java file in like so

// show(); setVisible(true); setAlwaysOnTop(true);

and it works perfectly. But I suspect this new feature appeared in some
later version of Java (for example, the show() method was replaced with
the setVisible(true) method. \</code\>

\<code\> How to use from a plugin Posted by Alberto Duina at 2008-02-18
01:10

I have tried Wait For User from a plugin, following the suggestion, but
without good results. Anybody has other ideas? Thanks Alberto \</code\>

\<code\> How to use from a plugin Posted by G. Landini at 2008-02-18
11:46

See <http://rsbweb.nih.gov/ij/notes.html> This is now part of IJ and you
can call it from a macro or plugin:

<http://rsbweb.nih.gov/ij/developer/macro/functions.html#W>

<http://rsb.info.nih.gov/ij/macros/WaitForUserDemo.txt> \</code\>

\<code\> How to use from a plugin Posted by Alberto Duina at 2008-02-18
16:17

Still doubts, this is a mini-plugin with my tries and comments: import
ij.\*; import ij.process.\*; import ij.gui.\*; import java.awt.\*;
import ij.plugin.\*; public class My_Plugin implements PlugIn { public
void run(String arg) { // 1 \-\--\> IJ.run(\"Wait For User\", \"Please
select a ROI\"); // run time message : Unrecognized command: Wait For
User // 2 \-\--\> IJ.run(\"Wait_For\_ User\", \"Please select a ROI\");
// run time message : Unrecognized command: Wait_For_User // 3 \-\--\>
IJ.runPlugIn(\"Wait_For\_ User\", \"Please select a ROI\"); // run time
message : Plugin or Class not found: Wait_For_User
(java.lang.ClassNotFoundException: Wait_For\_ User), but it continues
when you press ok // 4 \-\--\> IJ.runPlugIn(\"Wait For User\", \"Please
select a ROI\"); // with this the program continues but without the
message and without waiting the user
IJ.showMessage(\"My_Plugin\",\"Hello world!\"); } } Ciao Alberto
\</code\>

\<code\> How to use from a plugin Posted by Alberto Duina at 2008-02-22
14:10

Thanks to Waine for this explicative mail, now it functions! You can use
the WaitForUserDialog class that was added in ImageJ 1.39r. For example

new WaitForUserDialog(\"Do something, then click OK.\").show();

or

new WaitForUserDialog(\"Title\", \"Do something, then
clickOK.\").show();

if you want to use a dialog title other than the default \"Action
Required\".

In a macro, use waitForUser(\"Do something, then click OK\");

or

waitForUser(\"Title\", \"Do something, then click OK\");

Add new lines characters (\"\\n\") to display multiple lines in the
dialog, for example

waitForUser(\"Do something\\nthen something else,\\nthen click OK.\");

-wayne

\</code\>
