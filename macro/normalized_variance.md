# Normalized Variance

**A macro to determine image focal quality image-wide (not ROI-wide).**

\<code java\>

// A macro to determine image focal quality image-wide (not ROI-wide) //
Based on algorithm F-11 \"Normalized Variance\" // In: Sun et al., 2004.
MICROSCOPY RESEARCH AND TECHNIQUE 65, 139--149. // // Version: 0.3 //
Date: 11/07/2006 // Author: Andy Weller

macro \"Normalized_Variance\" { run(\"Clear Results\"); run(\"Set
Measurements\...\", \" mean redirect=None decimal=5\");
run(\"Measure\"); mean = getResult(\"Mean\"); selectWindow(\"Results\");
run(\"Close\"); W = getWidth(); H = getHeight(); b = 0; normVar = 0; //
Set to 0 which is out of focus for (j=0; j\<H; j++) {

     for (i=0; i&lt;W; i++) {
        p = getPixel(i,j);
        t = (p-mean)*(p-mean);
        b += t;
        }
     }

normVar = b/(H\*W\*mean); // Maximum value is best-focused, decreasing
as defocus increases print(normVar); // This can also (should) be
changed to return(normVar) }

\</code\>

\-\-- *\[\[\|Andy Weller\]\] 2008/10/24 11:45*
