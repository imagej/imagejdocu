# Minimum Separation Distance Between Boundaries

## Introduction

A more robust plugin that can optionally compute separation distances
between edges, centroids and centers of mass can be found at
<http://imagej.nih.gov/ij/plugins/graph/index.html>

\<del\>This plugin computes the minimum distance between objects. The
Results Table must be populated with XStart and YStart and the current
image must be the mask used to create the Results Table.\</del\>

## Author

Ben Tupper

## Description

The objects are defined using ImageJ\'s eight-connected boundaries
computed by the Wand class. Specifying a Nearest Neighbor Distance will
trigger the output of an additional table in the log window the
identifies objects that are \'connected\' by virtue of being within the
neighborhood distance. Note that groups maybe chain-like such that two
objects at opposite ends of the chain maybe much further apart from each
other than the minimum distance specified. Even so, via connectivity,
they are consider part of the same group.

## Installation

\<del\>Download Boundary_Separation.java to the plugins directory.
Create a binary mask and analyze it (Analyze \> Analyze particles\...).
Be sure to select the \"Record starts\" option of the Analyzer dialog so
that the Results Table will be populated with XStart and YStart.\</del\>

## Download

## License

## Changelog

## Known Bugs
