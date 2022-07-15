# HeatMap From Stack

## Author

Samuel Péan (based on M. Austenfeld Count_Stack_Pixels plugin and
Michael Doube Thermal LUT)

## Description

This plugin is a qualitative AND QUANTITAVE method to calculate the
preferential place of an individual or a group from a stack (= video
converted as an image sequence). Detection of the individual(s) is based
on the grayscale value. So I strongly recommand you to subtract
background from your image sequence to avoid bias (tutorial here:
<http://www.samuelpean.com/how-substract-background-video-imagej>). In
output you will have a graph and a table with the numerical score of
each sub-area.

![HeatMap From
Stack](/plugin/stacks/heatmap_from_stack/heatmap_from_stack_mini.png){.align-center}

About the calculation methods:

\- Absolute: all the results are divided by the number of frames. So a
red point in the heatmap means that this point was black during all the
sequence (=100% of occurence). This method can be use when you have a
high density of individual in your studied arena.

\- Relative: all the result are divided by the highest score found. For
example, in the animated demonstration, we have only 6 individuals in
the arena, so it\'s nearlly impossible to have a part of the tank
occuped during 100% of the time (exept in case of total immobility).
Absolute method isn\'t adapted in this case, it\'s much better to use
the Relative one: the best score will be the reference.

\- Log10: once you have chosen your calculation reference, you can apply
a Log10 transformation.

## Installation

Copy Thermal.lut file in your imagej/luts folder and the
HeatMap_From_Stack.class file in your imagej/plugins folder.

## Download

<http://www.samuelpean.com/heatmap-from-stack> (You will find a
commented and animated demonstration in this page too).

## License

GPL
