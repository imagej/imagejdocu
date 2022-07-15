# Auto Correlation

**A macro to determine image focal quality image-wide (not ROI-wide)**

\<code java\>

// A macro to determine image focal quality image-wide (not ROI-wide) //
Based on algorithm F-12 \"AutoCorrelation\" // In: Sun et al., 2004.
MICROSCOPY RESEARCH AND TECHNIQUE 65, 139--149. // // Version: 0.1 //
Date: 14/07/2006 // Author: Andy Weller

macro \"Auto_Correlation\" { W = getWidth(); H = getHeight(); b = 0; c =
0; autoCorr = 0; // Set to 0 which is out of focus for (j=0; j\<H; j++)
{

     for (i=0; i&lt;W; i++) {
        p = getPixel(i,j);
        p1 = getPixel(i+1,j);
        p2 = getPixel(i+2,j);
        s = p*p1;
        t = p*p2;
        b += s;
        c += t;
        }
     }

autoCorr = b-c; // Maximum value is best-focused, decreasing as defocus
increases print(autoCorr); // This can also (should) be changed to
return(autoCorr) }

\</code\>

by Andy Weller --- last modified 2006-07-14 20:44
