# Freehand and Selection Brush ROI conversion

**Convert freehand and selection brush ROIs to a polygon selection with
user editable handles.**

If a freehand selection or a selection brush ROI is drawn, the only way
to modify the shape of the ROI is to either \'paint\' extra geometry or
merge the ROI with another region using the ROI Manager. This could be
made easier such selections could be converted to a polygon selection
which has modifiable handles. On conversion, the user could specify
point placement by a \'smoothness\' factor (higher values result in more
vertices in the polygon), the elimination of non-selected \'islands\',
and the splitting of isolated selected regions into unique ROIs. by Lee
Pang --- last modified 2007-05-28 13:51

\<code\>

    Freehand and Selection Brush ROI conversion

Posted by G. Landini at 2007-05-28 13:49 This can be done already with a
very simple macro:

getSelectionCoordinates(x, y); run(\"Select None\");
makeSelection(\"polygon\", x, y);

\</code\>

\<code\>

    Works, kind of ...

Posted by Lee Pang at 2007-05-29 05:17 The macro you suggested works
with the freehand selections but with outlines made with the Selection
Brush tool, it returns a rectangular ROI equivalent to the bounding box
of the original selection.

    Try this...

Posted by G. Landini at 2007-05-29 12:51 The macro below works if the
ROI is a composite one (for example created with the Brush tool) and it
has no holes in it. (Use the above one for non-composite ROIs and the
one below for composite ones).

The roiManager should be empty (or closed) to run this correctly:

roiManager(\"Add\"); run(\"Add to Manager \"); roiManager(\"Select\",
0); roiManager(\"Split\"); roiManager(\"Select\", 1);
getSelectionCoordinates(x, y); run(\"Select None\");
makeSelection(\"polygon\", x, y); roiManager(\"Add\");
roiManager(\"Select\", 0); roiManager(\"Delete\");
roiManager(\"Select\", 0); roiManager(\"Delete\");
roiManager(\"Select\", 0); roiManager(\"Delete\");

\</code\> \<code\>

    Thanks!

Posted by Lee Pang at 2007-06-05 22:00 This worked. It tends to exclude
one ROI from the manager, but this is easily solved by hitting the
\'Add\' button after the macro has run.

\</code\> \<code\>

    ROI2PolylineROI.txt macro

Posted by G. Landini at 2007-06-06 11:49 A little improvement from the
previous. The macro below deals with all ROI types (and it also fixes
some extra lines the previous macro).

// ROI2PolylineROI // G. Landini 6/6/2007 // converts a ROI to
Poly-line/gon ROI // ROI should be in 1 piece and not contain holes //
Note that for composite ROIs, it will delete all other ROIs // currently
in the manager!

t=selectionType();

if (t==1 \|\| t==3 \|\| t==4) { getSelectionCoordinates(x, y);
run(\"Select None\"); makeSelection(\"polygon\", x, y); }

if (t==7) { getSelectionCoordinates(x, y); run(\"Select None\");
makeSelection(\"polyline\", x, y); }

if (t==9) { roiManager(\"Deselect\"); roiManager(\"Delete\");
roiManager(\"Add\"); roiManager(\"Select\", 0); roiManager(\"Split\");
roiManager(\"Select\", 1); getSelectionCoordinates(x, y); run(\"Select
None\"); makeSelection(\"polygon\", x, y); roiManager(\"Add\");
roiManager(\"Select\", 0); roiManager(\"Delete\");
roiManager(\"Select\", 0); roiManager(\"Delete\");
roiManager(\"Select\", 0); }

\</code\>
