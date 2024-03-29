# Variance

**A macro to determine image focal quality image-wide (not ROI-wide).**

Note (2011): please note that this macro is not really necessary as
ImageJ already supports computation of the standard deviation via the
same command used to obtain the mean image value: \<code java\>
run(\"Set Measurements\...\", \" mean standard redirect=None
decimal=5\"); \</code\> The variance is the squared value of the
standard deviation.

\<code java\>

// A macro to determine image focal quality image-wide (not ROI-wide) //
Based on algorithm F-10 \"Variance\" // In: Sun et al., 2004. MICROSCOPY
RESEARCH AND TECHNIQUE 65, 139--149. // // Version: 0.1 // Date:
14/07/2006 // Author: Andy Weller

macro \"Variance\_\" { run(\"Clear Results\"); run(\"Set
Measurements\...\", \" mean redirect=None decimal=5\");
run(\"Measure\"); mean = getResult(\"Mean\"); selectWindow(\"Results\");
run(\"Close\"); W = getWidth(); H = getHeight(); b = 0; Var = 0; // Set
to 0 which is out of focus for (j=0; j\<H; j++) {

     for (i=0; i&lt;W; i++) {
        p = getPixel(i,j);
        t = (p-mean)*(p-mean);
        b += t;
        }
     }

Var = b/(H\*W); // Maximum value is best-focused, decreasing as defocus
increases print(Var); // This can also (should) be changed to
return(Var) }

\</code\>

by Andy Weller --- last modified 2006-07-14 20:44
