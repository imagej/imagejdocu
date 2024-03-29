# Find edges

**What does the find edges filter do ?**

Uses a Sobel edge detector to highlight sharp changes in intensity in
the active image or selection. Two 3x3 convolution kernels (shown below)
are used to generate vertical and horizontal derivatives. The final
image is produced by combining the two derivatives using the square root
of the sum of the squares.

\<code\>

     1  2  1     1  0 -1
     0  0  0     2  0 -2
    -1 -2 -1     1  0 -1

\</code\>
