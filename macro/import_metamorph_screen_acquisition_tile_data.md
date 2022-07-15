# Stitch data from MetaMorph 7 \"Screen Acquisition\" module

Reassembles tiling data acquired by MetaMorph into stacks and
hyperstacks.

MetaMorph 7\'s Screen Acquisition (screenacq) does not natively support
time and Z acquisitions from it\'s UI or journal functions. Therefore
it\'s easier to assemble the 5D experiment (x,y,z,t,c) with FIJI
including stitch TIF files together with overlap.

#### Output

![Hyperstack output from running the \"Stitch Raw Data\" macro
tool](/macro/review_screen_data_output.png)

#### Requirements

[FIJI](http://fiji.sc/wiki/index.php/Downloads), since this macro makes
use of:

-   ImageJ 1.46c or later
-   [Grid/Collection stitching
    plugin](http://fiji.sc/wiki/index.php/Image_Stitching)

#### Installation

Download \"Review Screen Data.txt\" to the \>Macros\>Toolsets folder. It
will show up in the \"\>\>\" toolsets dropdown under the name of the
text file, \"Review Screen Data\".

           Filename           Last Modified
  -------------------------- ---------------
   `Review Screen Data.txt`    2013/02/04

#### License

Public Domain

#### Known Bugs

1.  Window flicker for each well site while constructing hyperstack.
    -   ImageJ has a bug where it throws a `NullPointerException` when
        using `BatchMode` to `run("Stack to Hyperstack...", ...)`
        followed by `close()`.
    -   As a workaround these functions need to be run outside of
        `BatchMode`, which causes the ficker of the window appearing and
        closing.
    -   Wayne Rasband is aware of this bug.
2.  Crash during macro stitching leaves `*.HTD` metadata files renamed
    as `*.HTD.bak`.
    -   Re-run the macro to fix.
    -   This renaming for is necessary to prevent the Bioformats reader
        from confusing MetaMorph `*.HTD` files to be Applied Precision
        files.

#### Change History

-   2013.02.04 v0.7a
    -   Fix \"Stack required\" error by skipping hyperstack assembly
        when not needed
-   2013.02.03 v0.6
    -   Fix for dot characters in dataset file naming
-   2012.10.21 v0.5
    -   Add Z projection macro
    -   Add toolbar icons for multiple macros
    -   Cleanup loop variables
-   2012.10.18 v0.4
    -   Fix single channel dataset file naming
-   2012.10.15 v0.3
    -   Initial public release
    -   Add user input validation of Z slices
    -   Workaround ImageJ BatchMode bug with creating hyperstack
    -   Fix progress bar index
-   2012.10.14 v0.2
    -   Add progress bar
    -   Add License
    -   Create hyperstacks
-   2012.10.12 v0.1
    -   Initial development release

#### Future Additions / Improvements

-   LOCI tools Bioformats should add support for Molecular Devices
    `*.HTD` data.
-   Multi-well viewer macro to directly open a hyperstack by clicking
    the well position.
