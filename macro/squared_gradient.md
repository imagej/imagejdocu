# Squared Gradient

**A macro to determine image focal quality image-wide (not ROI-wide)**

\<code java\>

// A macro to determine image focal quality image-wide (not ROI-wide) //
Based on algorithm F-2 \"Squared Gradient\" // In: Sun et al., 2004.
MICROSCOPY RESEARCH AND TECHNIQUE 65, 139--149. // // Version: 0.1 //
Date: 14/07/2006 // Author: Andy Weller

macro \"Squared_Gradient\" { W = getWidth(); H = getHeight(); sqGrad =
0; // Set to 0 which is out of focus for (j=0; j\<H; j++) {

     for (i=0; i&lt;W; i++) {
        p = getPixel(i,j);
        p1 = getPixel(i+1,j);
        sqGrad += (p1-p)*(p1-p); // Maximum value is best-focused, decreasing as defocus increases
        }
     }

print(sqGrad); // This can also (should) be changed to return(sqGrad) }

\</code\>

by Andy Weller --- last modified 2006-07-14 20:54
