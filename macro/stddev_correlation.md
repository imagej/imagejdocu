# Standard Deviation-Based Correlation

**A macro to determine image focal quality image-wide (not ROI-wide)**

\<code java\>

// A macro to determine image focal quality image-wide (not ROI-wide) //
Based on algorithm F-13 \"Standard Deviation-Based Correlation\" // In:
Sun et al., 2004. MICROSCOPY RESEARCH AND TECHNIQUE 65, 139--149. // //
Version: 0.1 // Date: 14/07/2006 // Author: Andy Weller

macro \"Corr_Stddev\" { run(\"Clear Results\"); run(\"Set
Measurements\...\", \" mean redirect=None decimal=5\");
run(\"Measure\"); mean = getResult(\"Mean\"); selectWindow(\"Results\");
run(\"Close\"); W = getWidth(); H = getHeight(); b = H\*W\*(mean\*mean);
StddevCorr = 0; // Set to 0 which is out of focus for (j=0; j\<H; j++) {

     for (i=0; i&lt;W; i++) {
        p = getPixel(i,j);
        p1 = getPixel(i+1,j);
        t = p*p1;
        StddevCorr += (p*p1)-b; // Maximum value is best-focused, decreasing as defocus increases
        }
     }

print(StddevCorr); // This can also (should) be changed to
return(StddevCorr) }

\</code\>

by Andy Weller --- last modified 2006-07-14 20:37
