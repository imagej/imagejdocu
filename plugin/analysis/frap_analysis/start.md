# FRAP Analysis

This plugin is for the analysis of FRAP experiments.

## Author

Philippe Carl (phcarl at free.fr)

## Description

-   The plugin lets you choose the starting slice corresponding to the
    slice where the cell has been hitted and defines automatically a ROI
    corresponding to the zone hitted by the laser and plots the
    corresponding intensity profile.
-   Given that the plugin is looking for the barycenter of the hit spot,
    it can only be applied for FRAP experiments with a single spot.
-   It also allows to determine the intensity of the rest of the cell in
    order to normalize the FRAP measurements.

## Installation

Download FRAP_Analysis.java to the ImageJ plugins folder, or subfolder,
and compile and run it using Plugins/Compile and Run. Restart ImageJ and
there will be a new FRAP_Analysis command in the Plugins menu or
submenu.

## Download

![FRAP_Analysis.java](/plugin/analysis/frap_analysis/frap_analysis.java)
Mind the uppercase issue: rename downloaded file to FRAP_Analysis.java

## Changelog

2009/04/13: First version
