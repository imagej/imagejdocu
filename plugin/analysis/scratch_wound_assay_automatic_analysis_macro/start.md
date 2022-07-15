**Below are two macros for automated analysis of scratch wound assays
commonly used in cell migration research.** Each calculates the size of
the wound, and exports result files and image files showing the fitting
of the scratch area. The macros will work on single images or stacks.
Please read the instructions in the header of each macro.

The first macro uses an edge-detection/thresholding method and is
usually the more accurate. The second macro uses a background
subtraction/thresholding method and may work better for some images.

**Macro 1: Edge-detection/thresholding method**

\<code java\> *This macro was designed to measure the size of the
scratch wound in a wound scratch assay. It uses an edge-detection and
thresholding technique. * It will batch process all images in a
directory. Images captured by time-lapse should be compiled into stacks
using a tool similar to \"Metamorph nd & ROI files importer (nd stack
builder)\" by Fabrice P. Cordelières *Images to be analyzed should be
placed in one directory (Source Directory) *A second directory should be
created to save results files and images (Destination Directory)
//Setting correct Lower and Upper thresholds is important to obtain a
good result.

// Developed by: Stuart J Gallagher; William J Ashby; Fabrice P
Cordeliéres; Lionel Larue. //Institut Curie; Vanderbilt University.

//This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 3 of the License, or (at your
option) any later version. This program is distributed in the hope that
it will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details. You should have received a
copy of the GNU General Public License along with this program. If not,
see <http://www.gnu.org/licenses/>.

dir1 = getDirectory(\"Choose Source Directory \");

    dir2 = getDirectory(&quot;Choose Destination Directory&quot;); 
    list = getFileList(dir1); 

x = getNumber(\"Input lower threshold\", 0); y = getNumber(\"Input upper
threshold\", 80); //This generates a message box to generate the lower
(x) and upper (y) bounds for thresholding later on.

setBatchMode(true); //use this to save time by not displaying images

for (i=0; i\<list.length; i++){

        showProgress(i+1, list.length); 
      open(dir1+list[i]); 

      run(&quot;8-bit&quot;);   //my experience is that I get better results in 8-bit. 
      run(&quot;Duplicate...&quot;, &quot;title=copy duplicate&quot;); 

selectWindow(list\[i\]); run(\"Sharpen\", \"stack\"); //this step really
helps a lot for thin cells with thin lamellopodia run(\"Find Edges\",
\"stack\");

setThreshold(x,y);

//very important to get an appropriate threshold

run(\"Convert to Mask\", \" \"); run(\"Analyze Particles\...\",
\"size=12000-Infinity circularity=0.00-1.00 show=Outlines summarize
stack\"); selectWindow(\"Summary of \"+list\[i\]); saveAs(\"Text\",
dir2+list\[i\]); run(\"Close\"); //This saves and closes the Analyze
Particles results

selectWindow(\"Drawing of \"+list\[i\]); run(\"Red\"); run(\"Invert
LUT\"); run(\"RGB Color\"); selectWindow(\"copy\"); run(\"RGB Color\");
imageCalculator(\"Add stack\", \"copy\", \"Drawing of \"+list\[i\]);
run(\"Size\...\", \"width=600 constrain interpolate\"); saveAs(\"Tiff\",
dir2+\"Drawing \"+list\[i\]);

//The above makes and saves an file containing the original image
overlaid with the outline of the wound that was fitted by the program.

close(); close(); close(); } \</code\>

**Macro 2: Background subtraction/thresholding method**

\<code java\> *This macro was designed to measure the size of the
scratch wound in a wound scratch assay. It uses a back-ground
subtraction technique. * It will batch process all images in a
directory. Images captured by time-lapse should be compiled into stacks
using a tool similar to \"Metamorph nd & ROI files importer (nd stack
builder)\" by Fabrice P. Cordelières *Images to be analyzed should be
placed in one directory (Source Directory) *A second directory should be
created to save results files and images (Destination Directory)
//Setting correct Lower and Upper thresholds is important to obtain a
good result.

// Creator: Stuart J Gallagher; William J Ashby; Fabrice P Cordeliéres;
Lionel Larue. //Institut Curie; Vanderbilt University.

//This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 3 of the License, or (at your
option) any later version. This program is distributed in the hope that
it will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details. You should have received a
copy of the GNU General Public License along with this program. If not,
see <http://www.gnu.org/licenses/>.

dir1 = getDirectory(\"Choose Source Directory \");

    dir2 = getDirectory(&quot;Choose Destination Directory&quot;); 
    list = getFileList(dir1); 

x = getNumber(\"Input lower threshold\", 0); y = getNumber(\"Input upper
threshold\", 80); //This generates a message box to generate the lower
(x) and upper (y) bounds for thresholding later on.

setBatchMode(true); //use this to save time by not displaying images

for (i=0; i\<list.length; i++){

        showProgress(i+1, list.length); 
      open(dir1+list[i]); 

      run(&quot;8-bit&quot;);   //my experience is that I get better results in 8-bit. 
      run(&quot;Duplicate...&quot;, &quot;title=copy duplicate&quot;); 

selectWindow(list\[i\]);

run(\"Subtract Background\...\", \"rolling=30 light stack\");
run(\"Enhance Contrast\", \"saturated=5\"); run(\"Invert\", \"stack\");

setThreshold(x,y);

run(\"Convert to Mask\", \" \"); run(\"Analyze Particles\...\",
\"size=12000-Infinity circularity=0.00-1.00 show=Outlines summarize
stack\"); selectWindow(\"Summary of \"+list\[i\]); saveAs(\"Text\",
dir2+list\[i\]); run(\"Close\"); //This saves and closes the Analyze
Particles results

selectWindow(\"Drawing of \"+list\[i\]); run(\"Red\"); run(\"Invert
LUT\"); run(\"RGB Color\"); selectWindow(\"copy\"); run(\"RGB Color\");
imageCalculator(\"Add stack\", \"copy\", \"Drawing of \"+list\[i\]);
run(\"Size\...\", \"width=600 constrain interpolate\"); saveAs(\"Tiff\",
dir2+\"Drawing \"+list\[i\]);

//The above makes and saves an file containing the original image
overlaid with the outline of the wound that was fitted by the program.

close(); close(); close(); } \</code\>
