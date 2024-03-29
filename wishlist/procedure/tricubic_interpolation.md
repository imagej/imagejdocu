# Tricubic Interpolation

When scaling with the -\> Image -\> Scale command, there is currently no
tricubic interpolation. Bicubical interpolation exists of course. When
interpolating in three dimensions it looks like it would bicubically
interpolate the stack images and then later on cubically interpolate
this new stack. (However, I think there is some severe mathematical
difference between true tricubic interpolation and this \"workaround\".)

The Wikipedia article about the topic (
<http://en.wikipedia.org/wiki/Tricubic_interpolation> ) gives some
overview already. And there was a paper out there by Lekien in 2005
(freely accessible here: <http://doi.wiley.com/10.1002/nme.1296> the
links in there won\'t work afaik). The article claims not only that
direct tricubic interpolation would be more accurate than consecutive
other interpolation methods, it might also be much faster (they claimed
100x, but that\'s when they used some really high up-scaling, I think).
So it might be well worth including this feature.

Googling for \"java tricubic interpolation\" brings out a couple of
pages with the (imO) most interesting ones being:
<http://www.ee.ucl.ac.uk/~mflanaga/java/TriCubicSpline.html>
<http://www.paulinternet.nl/?page=bicubic>

However, I got no experience with programming Java, neither ImageJ
macros, so for me it could be a very tedious task and I would highly
appreciate if somebody would deem this task worthwhile and would even do
some programming on it.
