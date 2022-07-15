# FAQ: What are the algorithms used to calculate particle area and perimeter?

The Particle Analyzer calculates **Area** as the number of pixels
forming the 8-neighbour connected particle.

The **Perimeter** is calculated by the **getTracedPerimeter()** method
in the **PolygonRoi.class**

From the source file:

    The algorithm counts edge pixels as 1 and corner pixels as sqrt(2). 
    It does this by calculating the total length of the ROI boundary and 
    subtracting 2-sqrt(2) for each non-adjacent corner. For example, a 1x1 
    pixel ROI has a boundary length of 4 and 2 non-adjacent edges so the 
    perimeter is 4-2*(2-sqrt(2)). A 2x2 pixel ROI has a boundary length 
    of 8 and 4 non-adjacent edges so the perimeter is 8-4*(2-sqrt(2)).

However, there are other definitions of area and perimeter. For instance
the Particles8 plugin calculates the **Perimeter** using the Freeman
chaincode algorithm (stepping along the boundary pixels, i.e. from
centre-of-pixel to centre-of-pixel and counting a distance of 1 between
side-neighbours and sqrt(2) between corner-neighbours).

The Particles8 plugin calculates **Area** as the area enclosed by the
chaincode polygon (this value is slightly smaller than the number of
pixels because the polygon is traced from the centres of the boundary
pixels). That plugin also returns the number of pixels in the particle
as **Pixels**.

As a consequence of this, perimeters and areas of the same particles
measured with the 2 procedures are slightly different - especially so
when dealing with small particles. Also parameters that use ratios of
these quantities such as **Circularity** are likely to be affected
(since use both area and perimeter for the computation).

Which one is right? **All of them are**. The differences are due to
different definitions of perimeter and area.

Note that there are more definitions of particle perimeter that can be
used in image analysis.
