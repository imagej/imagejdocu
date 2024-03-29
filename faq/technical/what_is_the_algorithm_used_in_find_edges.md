# FAQ: What is the algorithm used in Find Edges?

It is the 3x3 [Sobel edge
filter](http://homepages.inf.ed.ac.uk/rbf/HIPR2/sobel.htm).

The source is in the *filter()* method of the//
ij/process/ByteProcessor.java //class.

    ...
    case FIND_EDGES: // 3x3 Sobel filter
    sum1 = p1 + 2*p2 + p3 - p7 - 2*p8 - p9;
    sum2 = p1  + 2*p4 + p7 - p3 - 2*p6 - p9;
    sum = (int)Math.sqrt(sum1*sum1 + sum2*sum2); 
    if (sum&gt; 255) sum = 255;
    break;
    ...

p1\...p9 hold the grey value of the pixels in the 3x3 kernel (the
central pixel is p5).

There are many other edge detecting algorithms (such as Canny, Roberts,
Marr\'s Laplacian-of-Gaussian or LoG, difference-of-boxes or DoB,
Frei-Chen, etc.).
