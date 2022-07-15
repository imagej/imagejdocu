# Radial Distribution Function

### The Basics

An ImageJ macro that calculates the [radial distribution
function](wp&gt;Radial distribution function) (RDF) of particle centers.
Needs the [Radial_Profile
plugin](http://rsb.info.nih.gov/ij/plugins/radial-profile.html).

![Input image (left) and Radial Distribution Function
(right)](/macro/rdf-example.gif)

The macro is based on the calculation of the autocorrelation via the
Fourier transform, but it does not assume periodic boundary conditions.
It increases the image size to a value large enough to avoid any
influence of the \'periodic\' nature of the FFT and corrects for
finite-size effects (edge effects) that would occur because particles
close to the edge necessarily have fewer distant neighbors than
particles near the center (this correction is exact in case of very
small particles only; it has limited accuracy for large particles).

For the autocorrelation of the image (all pixels, not only the centers)
see the
[radially_averaged_autocorrelation](/macro/radially_averaged_autocorrelation)
macro.

## The Macro

### Quick Installation

1.  Install \"Radial Profile\" plugin from
    <http://rsb.info.nih.gov/ij/plugins/radial-profile.html>.
2.  Copy and paste the code below into a text file and save it as
    RadialDistributonFunction.txt (.txt extension is required).
3.  ImageJ \> Plugins \> Macros \> Install (select the file created in
    previous step).

### Using the Macro

1.  Open a binary or 8-bit image/stack with dark particles on a light
    background. Grayscale/RGB images are OK. For binary images/stacks,
    the macro does not care whether \"black background\" is selected in
    Process\>Binary\>Options.
2.  On the ImageJ console, click Process \> Find Maxima (this opens up a
    dialog box). Select the following options (Single Points, Exclude
    edge maxima, Light Background and Preview pont selection) and adjust
    the noise threshold until all the particles are accurately selected.
    Note down the optimal noise threshold. If you cannot find a
    threshold that works reliably, your image may need further
    processing before the RDF is computed. In some cases generating
    particle analysis masks or applying gaussian blur filters may help.
    For binary images, this threshold check step may be skipped and the
    default value (10) used in the next step.
3.  Click on the image of interest and invoke the macro dialog using the
    **F5** keyboard key **OR** click **Plugins\>Macro\>Radial
    Distribution Function** on the main ImageJ console. Enter the Noise
    Threshold level from Step 2, modify the other settings as required,
    and click OK to start analyzing your file.

### Performance

For a 2048\*2048 image (expanded to 4096\*4096 internally), computing
time is about half a minute on a 2.4 GHz Core2Duo; memory requirement
about 400 MB.

### Code

\<code\> // ImageJ macro to calculate the Radial Distribution Function
(RDF) of particle centers * * Version 2011-08-22 * * Input: Binary or
8-bit input image/stack with dark particles on light background. //
Grayscale/RGB images are OK as long as \"Find Maxima\" works reliably on
them. // For binary images/stacks, the macro does not care whether
\"black background\" // is selected in Process\>Binary\>Options. * *
Output: Normalized RDF plot with distance in pixels. For stacks the mean
is plotted. * * Known Issues, Updates and Examples at: //
<http://imagejdocu.tudor.lu/doku.php?id=macro:radial_distribution_function> * *
Requirements: A working install of \"Radial Profile\" plugin is
required. Get it at //
<http://rsb.info.nih.gov/ij/plugins/radial-profile.html> * *
Limitations: // - Particle positions are rounded to full pixel nearest
to particle intensity maximum // - RDF output distances are in pixels,
irrespective of any spatial calibration of the image // - RDF range is
0.3x the smallest dimension of the image // - Particles touching the
edge will be ignored; this will limit the accuracy // if the particles
are not much smaller than the image size. // - Do not extend the image
size for avoiding edge effects; the macro takes care of this. *
*////////////////////////////////////////////////////////////////////////////////

macro \"Radial Distribution Function \[f5\]\" {

      run(&quot;Select None&quot;);
      doStack=false;
      //User dialog
      Dialog.create('RDF Options');
      Dialog.setInsets(0,0,0)
      Dialog.addMessage(&quot;Radial Distribution Function Macro \nby Michael Schmid &amp; Ajay Gopal \n(v.2011-08-21)&quot;);
      if (nSlices()&gt;1) {
          Dialog.addMessage(&quot;Selected file is a stack. \nUncheck below to analyze \nonly the current slice.&quot;);
          Dialog.addCheckbox(&quot;Use all slices in stack?&quot;, true);
      }
      Dialog.addMessage(&quot;Particle Detection Noise Threshold \nHint: test image/s first with \nImageJ&gt;Process&gt;Find Maxima \nto verify that below threshold \ngives accurate particle centers.&quot;);
      Dialog.addNumber(&quot;     Noise Threshold&quot;, 10);
      Dialog.addMessage(&quot;Default output is RDF plot with \noptions to list, save &amp; copy data. \nCheck below to output extra \nwindow with RDF data table.&quot;);
      Dialog.addCheckbox(&quot;Output RDF data table &quot;, false);
      Dialog.show;
       //Preliminary checks
      if (nSlices()&gt;1) {doStack = Dialog.getCheckbox;}
      noiseThr = Dialog.getNumber;
      showList = Dialog.getCheckbox;
      setBatchMode(true);
      firstSlice=getSliceNumber();
      lastSlice=getSliceNumber();
      if (doStack) {
          firstSlice=1;
          lastSlice=nSlices();
      }
      width=getWidth;
      height=getHeight;
      //maxRadius may be modified, should not be larger than 0.3*minOf(width, height);
      maxRadius=0.3*minOf(width, height);
      minFFTsize=1.3*maxOf(width, height);
      title=getTitle();
      size=4;
      while(size&lt;minFFTsize) size*=2;
      //Main processing loop
      for (slice=firstSlice; slice&lt;=lastSlice; slice++) {
          //Make autocorrelation of particle positions
          if (doStack) setSlice(slice);
          run(&quot;Find Maxima...&quot;, &quot;noise=&quot;+noiseThr+&quot; output=[Single Points] light exclude&quot;);  
          tempID=getImageID();
          tempTitle=&quot;temp-&quot;+random();
          rename(tempTitle);
          run(&quot;Canvas Size...&quot;, &quot;width=&quot;+ size+&quot; height=&quot;+ size+&quot; position=Center zero&quot;);
          run(&quot;FD Math...&quot;, &quot;image1=[&quot;+tempTitle+&quot;] operation=Correlate image2=[&quot;+tempTitle+&quot;] result=AutoCorrelation do&quot;);
          psID=getImageID();
          selectImage(tempID);
          close();
          //Make autocorrelation reference to correct finite image size effects
          newImage(&quot;frame&quot;, &quot;8-bit White&quot;, width, height, 1);
          run(&quot;Set...&quot;, &quot;value=255&quot;);
          tempID=getImageID();
          rename(tempTitle);
          run(&quot;Canvas Size...&quot;, &quot;width=&quot;+ size+&quot; height=&quot;+ size+&quot; position=Center zero&quot;);
          run(&quot;FD Math...&quot;, &quot;image1=[&quot;+tempTitle+&quot;] operation=Correlate image2=[&quot;+tempTitle+&quot;] result=AutoCorrReference do&quot;);
          refID=getImageID();
          imageCalculator(&quot;Divide&quot;, psID,refID);
          selectImage(refID);
          close();
          selectImage(tempID);
          close();
          //Prepare normalized power spectrum for radial averaging
          selectImage(psID);
          makeRectangle(size/2, size/2, 1, 1);
          run(&quot;Set...&quot;, &quot;value=0&quot;);
          run(&quot;Select None&quot;);
          circleSize=2*floor(maxRadius)+1;
          run(&quot;Specify...&quot;, &quot;width=&quot;+circleSize+&quot; height=&quot;+circleSize+&quot; x=&quot;+(size/2+0.5)+&quot; y=&quot;+(size/2+0.5)+&quot; oval centered&quot;);
          getRawStatistics(nPixels, mean);
          run(&quot;Select None&quot;);
          run(&quot;Divide...&quot;, &quot;value=&quot;+mean);
          run(&quot;Specify...&quot;, &quot;width=&quot;+circleSize+&quot; height=&quot;+circleSize+&quot; x=&quot;+(size/2+0.5)+&quot; y=&quot;+(size/2+0.5)+&quot; oval centered&quot;);
          run(&quot;Radial Profile&quot;, &quot;x=&quot;+(size/2+0.5)+&quot; y=&quot;+(size/2+0.5)+&quot; radius=&quot;+floor(maxRadius)-1);
          rename(&quot;RDF of &quot;+title);
          rdfID=getImageID(); 
          selectImage(psID); 
          close();
          //Averaging of RDFs for stacks 
          if (doStack) {
              selectImage(rdfID);   
              Plot.getValues(x, y);
              if (slice==firstSlice) ySum = newArray(y.length);
              for (i=0; i&lt;y.length; i++)
              ySum[i]+ = y[i] / lastSlice;
              close();
          }
      }//End Processing Loop  

      //Create output plots with annotated titles and options
      if (doStack) {
          Plot.create(&quot;RDF of &quot;+title+&quot; (stack)&quot;, &quot;Distance (pixels)&quot;, &quot;RDF&quot;, x, ySum);
          if (showList) {
              run(&quot;Clear Results&quot;);
              for (i=0; i&lt;x.length; i++) {
                  setResult(&quot;R&quot;, i, x[i]);
                  setResult(&quot;RDF&quot;, i, ySum[i]);
              }
              updateResults();
          }
      } 
      else {
          selectImage(rdfID);
          Plot.getValues(x, y);
          Plot.create(&quot;RDF of &quot;+title+&quot; (slice&quot;+lastSlice+&quot;)&quot;, &quot;Distance (pixels)&quot;, &quot;RDF&quot;, x, y);
          if (showList) {
              run(&quot;Clear Results&quot;);
              for (i=0; i&lt;x.length; i++) {
                  setResult(&quot;R&quot;, i, x[i]);
                  setResult(&quot;RDF&quot;, i, y[i]);
              }
              updateResults();
          }
          close();        
      }//End Output
      setBatchMode(&quot;exit and display&quot;);// Comment this out if you get duplicate RDF outputs

} //End Macro\</code\>

## Known Issues

1.  (via Gabriel Landini) In some setups, the macro creates two RDF
    output plots. The penultimate line of code \"setBatchMode(\"exit and
    display\");\" can be commented out to fix this. This line has been
    retained in the code for now as some installations seem to behave
    better with it. \[Update: Thanks to Wayne Rasband, this bug has been
    fixed. The macro code above should not produce duplicate outputs in
    ImageJ version 1.45n1 (current daily build) and later. \-\-- *[Ajay
    Gopal](/users/ajzz) 2011/08/23 19:07*\]
2.  The macro dialog is owned by the image that was active when the
    macro was invoked. Switching focus to another image will not change
    the image processed. Related to this, it is possible to open a new
    macro dialog for each open image. Only the most recent dialog will
    be active. It is possible to activate a second dialog while the
    first is still in process and this causes errors in both jobs as
    image selections get mixed up between the two. It may be possible to
    add job-specific variable suffixes to fix this. \-\-- *[Ajay
    Gopal](/users/ajzz) 2011/08/22 07:14*

## Further Examples

![](/macro/rdf-example-actin-sm.png)

![](/macro/rdf-example-bees-sm.png)

## ChangeLog

Changes in the macro code are reported here. To view wiki changes use
\"Old Revisions\" tab above.

**2008-Dec-09 Michael Schmid** - first version

**2009-May-14 Michael Schmid** - \"select none\", more specific comments

**2011-Aug-19 Ajay Gopal** - many stack-related bugfixes

1.  Missing stack slice selection causing repetitive evaluation of first
    slice
2.  Failed Plot.getValues for stacks in batch mode due to img selection
    failures
3.  Enabled list/save/copy options on output plots so data points can be
    saved
4.  Enumerate stack slice number in title if entire stack is not used
5.  Corrected averaging variable for ySum from \"nSlices\" to
    \"lastSlice\"

**2011-Aug-21 Ajay Gopal** - several UI changes

1.  Dialog for user configurable options added
2.  Consolidated data table output option with main macro
3.  Stack option and hints added to dialog
4.  Added keyboard shortcut \"f5\"
5.  Code annotated and indented

**2011-Aug-22 Ajay Gopal** - moved changelog from macro to wiki to
reduce header bloat
