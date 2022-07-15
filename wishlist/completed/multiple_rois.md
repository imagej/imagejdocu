# Multiple ROIs

** Support for multiple ROIs in a single slice.**

Having multiple ROIs in a single slice is useful if one needs to define
an ROI position relative to another ROI, or if multiple measurements
must be made in a single slice. ROIs could be of any variety, could be
named and saved, and measurements could be exported.

\<code\>

    ROI Manager

Posted by Michael Schmid at 2007-04-20 12:53 Couldn\'t one use the roi
manager?

\</code\>

\<code\>

    Sorry, I wasn't clear

Posted by John Pratt at 2007-04-20 17:05 I am interested in displaying 2
or more independent ROIs at the same time, and being able to draw a new
ROI while other ROIs are still displayed, and being able to move ROIs
relative to other ROIs. For example, I want to measure the distance and
angle between two ROIs, and in another case, I want to make sure two
ROIs don\'t overlap.

Maybe this already exists in ImageJ. I haven\'t figure out how to do it.
But if not, it would be useful. Most image analysis software allows you
to do that.

Thanks for your reply.

\</code\>

\<code\>

    I think this can be done already

Posted by G. Landini at 2007-04-22 21:39 Draw a ROI, press \"t\", it
goes to the ROI Manager, Draw another ROI, press \"t\", it also goes
there. You can call any ROI by clicking on the number in the ROI Manager
list. You can move them around and save them again (press \"t\" and
delete the old one). Want them all on the image? Select the ROIs from
the list (clicking while pressing Shift) and go to More\>Combine.

I have no idea what the \"angle between two ROIs\" may mean. For the
distance, you could draw the ROIs one at a time, extract the (border)
pixels and do a brute force distance search (using Pythagoras theorem)
between the pixels in ROI1 and ROI2.

\</code\>

\<code\>

    Is this what you want?

Posted by Lee Pang at 2007-05-26 11:07 Are you referring to something
akin to layered control of object ROIs?

For example, the user draws ROI-1 around object 1. Then the user draws
ROI-2 in the same slice around object 2. Both ROIs remain visible, and
each can be independently modified. Programatically, this could be done
by placing each ROI in it\'s own virtual layer - kind of like drawing in
Adobe Illustrator - that is non-destructive to the image data. In a
similar sense, ROI boundaries can be treated like generic paths and
appropriate logic - subtraction, addition, exclusion, inclusion,
cropping, etc. - can be applied just to the ROIs.

In essence, replace the current ROI Manager with a Layer controller.

\</code\>

\<code\>

    You can do this already

Posted by G. Landini at 2007-05-28 13:42 You can have several ROIs per
slice. You can see them all by using Show All and even add more ROIs. I
do not think that adding a more complicated layer controller is
necessary.

\</code\>

\<code\>

    &quot;Show all&quot; does the trick

Posted by John Pratt at 2007-05-29 17:38 \"Show all\" is the function I
was looking for. I like it.

Thanks for your help.

\</code\>
