# Distribution Plotter

\*\*Plots relative and cumulative frequencies on a double Y-axis graph
of a measured parameter. \*\*

#### Description

-   Part of [BAR](http://fiji.sc/BAR)
-   Retrives relative and cumulative frequencies
-   Fits a Normal distribution to the histogram of relative frequencies
-   Offers [several
    methods](http://en.wikipedia.org/wiki/Histogram#Number_of_bins_and_width)
    to automatically determine the number of bins: Square root (used by
    e.g., M. Excel), Sturges\', Scott\'s (used by
    `Analyze>Distribution...`) and Freedman--Diaconis\'
-   Further details
    [here](https://github.com/tferr/Scripts/blob/master/Data_Analysis/README.md#distribution-plotter)

![Distribution Plotter
Screenshot](/macro/distributionplotterdemo.png){.align-center}

#### Requirements

ImageJ 1.48q or later. Use `Help>Update ImageJ...` to upgrade to a newer
version.

#### Installation

1.  Subscribe to the [BAR update site](http://fiji.sc/BAR#Installation)
    in [Fiji](http://fiji.sc/). Alternatively, download the latest
    version of `Distribution Plotter` from
    [GitHub](https://github.com/tferr/Scripts/blob/master/Data_Analysis/Distribution_Plotter.ijm?raw=true)
    (direct link).
2.  Place the file in the `ImageJ/plugins/` or `Fiji.app/plugins/`
    folder (or subfolder).
3.  The command `Distribution Plotter` will be listed in the `Plugins>`
    menu after running `Help>Refresh Menus`.

#### Notes

-   On imported tables: ImageJ typically pads columns with different
    number of rows with *0*. Such data points can be ignored by checking
    the *Ignore zeros* checkbox
-   NaN (Not a Number) entries are ignored
-   Distribution tables can be accessed through the *List*, *Save\...*
    and *Copy\...* buttons of the plot window: *X0*: Bin start, *Y0*:
    Relative frequencies; *X1*: Values, *Y1*: Cumulative frequencies

------------------------------------------------------------------------

Keywords: Analyze particles, Distribution, Histogram, Frequencies,
Descriptive Statistics, BAR

\-\-- *[Tiago Ferreira](/users/tferreira) 2014/06/19 23:11*
