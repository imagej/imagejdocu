# Multi Undo

**Allow multiple undo snapshots to be saved in a buffer for later
restoration**

### Summary

The \'Multi Undo\' plugin can be called from macros or plugins to save
the current image for restoration later. The number of saved images is
only limited by available memory. Saved image data is associated with
the image from which it came, allowing different slices in an Image
Stack to be saved and restored independently.

### Available commands

\<code java\>

    run(&quot;Multi Undo&quot;, &quot;Save&quot;);  // Save the current active image to the Multi-Undo stack

\</code\>

\<code java\>

    run(&quot;Multi Undo&quot;, &quot;Undo&quot;);   // Restore the last saved snapshot (not necessarily the current image)

\</code\>

\<code java\>

    run(&quot;Multi Undo&quot;, &quot;UndoLast&quot;);  // Revert the current image to the most recent associated snapshot

\</code\>

### Bugs

There are no known bugs, however this plugin has not been exhaustively
tested

### To Do

-   Create a panel listing available saved snapshots, the images with
    which they are associates, and buttons to save / restore
-   Create a toolbar button

### Version History

-   First release: 2008-03-14

![\*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1](/filelist&gt;/plugin/utilities/multi_undo/*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1)
