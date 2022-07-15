# Affine + Consistent Elastic 2D Image Registration

**This macro aligns a stack of images taking the first image as
reference in two steps: MOPS and bUnwarpJ.** The parameters from both
methods are introduced in a common dialog.

##### Requirements

You need to have previously installed the plugins
[SIFT/MOPS](http://pacific.mpi-cbg.de/wiki/index.php/Feature_Extraction)
from Stephan Saalfeld and
[bUnwarpJ](http://biocomp.cnb.uam.es/~iarganda/bUnwarpJ/) from Ignacio
Arganda-Carreras.

##### Input

Stack of 8, 16, 32-bit or RGB-Color images.

##### Output

-   Aligned stack.
-   Masks stack.

##### Authors

-   Marta Rivera-Alba
-   Ignacio Arganda-Carreras

##### Version and updates

March 11th, 2009: updated to be used with bUnwarpJ 2.5.

November 10th, 2008: changed \"divergency_weight\" to
\"divergence_weight\" in order to run bUnwarpJ last release.

\<code java\>

/\*\* \* Affine + Consistent Elastic 2D Image Registration macro for
ImageJ(C). \* Copyright (C) 2008 Marta Rivera-Alba and Ignacio
Arganda-Carreras \* \* More information at
<http://biocomp.cnb.csic.es/%7Eiarganda/bUnwarpJ/> \* \* This program is
free software; you can redistribute it and/or \* modify it under the
terms of the GNU General Public License \* as published by the Free
Software Foundation (<http://www.gnu.org/licenses/gpl.txt> ) \* \* This
program is distributed in the hope that it will be useful, \* but
WITHOUT ANY WARRANTY; without even the implied warranty of \*
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the \* GNU
General Public License for more details. \* \* You should have received
a copy of the GNU General Public License \* along with this program; if
not, write to the Free Software \* Foundation, Inc., 59 Temple Place -
Suite 330, Boston, MA 02111-1307, USA. \* \*/

/\*\* \* DESCRIPTION: \* This macro aligns a stack of images taking the
first image as reference. \* REQUIREMENTS: \* ImageJ with \* bUnwarpJ:
<http://biocomp.cnb.csic.es/%7Eiarganda/bUnwarpJ/> \* MOPS:
<http://pacific.mpi-cbg.de/wiki/index.php/Feature_Extraction> \* INPUT:
\* Stack of 8, 16, 32-bit or RGB-Color images. \* OUPUT: \* Aligned
stack. \* Masks stack. \* AUTHORS: \* Marta Rivera-Alba -
marta.rivera@uam.es \* Ignacio Arganda-Carreras - ignacio.arganda@uam.es
\* VERSION: \* November 10th, 2008. \* \*/

// Create basic dialog listTransformation = newArray(\"Translation\",
\"Rigid\", \"Affine\"); listRegistrationMode = newArray(\"Fast\",
\"Accurate\",\"Mono\"); listInitialDef = newArray(\"Very
Coarse\",\"Coarse\",\"Fine\",\"Very Fine\"); listFinalDef =
newArray(\"Very Coarse\",\"Coarse\",\"Fine\",\"Very Fine\",\"Super
Fine\"); listImgSub =
newArray(\"0\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\");

Dialog.create(\"Affine + Consistent Elastic 2D Registration\");

Dialog.addMessage(\"\*\*\*\*\*\*\*\*\*\*\* MOPS options
\*\*\*\*\*\*\*\*\*\*\*\"); Dialog.addCheckbox(\"MOPS landmarks
extraction\",true) Dialog.addNumber(\"steps per scale octave\", 3);
Dialog.addNumber(\"initial gaussian blur\", 1.60);
Dialog.addNumber(\"feature descriptor width\", 16);
Dialog.addNumber(\"minimum image size\", 64); Dialog.addNumber(\"maximum
image size\", 1024); Dialog.addNumber(\"closest/next closest ratio\",
0.92); Dialog.addNumber(\"maximal alignment error\", 25.0);
Dialog.addNumber(\"inlier ratio\",0.05); Dialog.addCheckbox(\"upscale
image first\",true); Dialog.addChoice(\"transformation
class\",listTransformation, \"Affine\");

Dialog.addMessage(\"\*\*\*\*\*\*\*\*\* bUnwarpJ options
\*\*\*\*\*\*\*\*\*\"); Dialog.addChoice(\"Registration Mode\",
listRegistrationMode, \"Mono\");
Dialog.addChoice(\"Image_Subsample_Factor\", listImgSub, \"0\");
Dialog.addChoice(\"Initial Deformation\",listInitialDef);
Dialog.addChoice(\"Final Deformation\",listFinalDef, \"Fine\");
Dialog.addNumber(\"Divergence Weight\", 0.0); Dialog.addNumber(\"Curl
Weight\", 0.0); Dialog.addNumber(\"Landmark Weight\",0.0);
Dialog.addNumber(\"Image Weight\", 1.0); Dialog.addNumber(\"Consistency
Weight\", 10.0); Dialog.addNumber(\"Stop Threshold\", 0.01);
Dialog.addCheckbox(\"Verbose\",false); Dialog.addCheckbox(\"Save
Transformations\",false);

Dialog.show();

// Get dialog input values useMOPS=Dialog.getCheckbox;
spso=Dialog.getNumber; igb=Dialog.getNumber; fdw=Dialog.getNumber;

minis=Dialog.getNumber; maxis=Dialog.getNumber; cncr=Dialog.getNumber;
maxae=Dialog.getNumber; ir=Dialog.getNumber; uifbool=Dialog.getCheckbox;
tc=Dialog.getChoice;

r=Dialog.getChoice; img_sub_factor = Dialog.getChoice;
id=Dialog.getChoice; fd=Dialog.getChoice; dw=Dialog.getNumber;
curlw=Dialog.getNumber; lw=Dialog.getNumber; iw=Dialog.getNumber;
conw=Dialog.getNumber; st=Dialog.getNumber;
verbosebool=Dialog.getCheckbox; strbool=Dialog.getCheckbox;

// Transform values into macro parameters if
(uifbool==1){uif=\"upscale_image_first\";} else {uif=\"\";}

if (id==\"Very Coarse\")

      {id=&quot;[Very Coarse]&quot;;} 

else if (id==\"Very Fine\")

      {id=&quot;[Very Fine]&quot;;}

if (fd==\"Very Coarse\")

      {fd=&quot;[Very Coarse]&quot;;} 

else if (fd==\"Very Fine\")

      {fd=&quot;[Very Fine]&quot;;}

else if (fd==\"Super Fine\")

      {fd=&quot;[Super Fine]&quot;;}

if (verbosebool==1){verbose=\"verbose\";} else {verbose=\"\";}

if (strbool==1){str=\"save_transformations\";} else {str=\"\";}

// Get input stack name inputStackName = getTitle();

// Select input stack selectWindow(inputStackName); numOfInputSlices =
nSlices;

// Duplicate stack to store results run(\"Duplicate\...\",
\"title=\[Registration results\] duplicate\"); // Grayscale images are
converted to 32-bit. if(bitDepth() != 24)

      run(&quot;32-bit&quot;);

// Duplicate stack to store masks run(\"Duplicate\...\",
\"title=\[Registration masks\] duplicate\"); // Grayscale images are
converted to 32-bit. if(bitDepth() != 24)

      run(&quot;32-bit&quot;);

// The two initial masks are all white setForegroundColor(255, 255,
255); for(i = 1; i \< 3; i++) {

      setSlice(i);
      run(&quot;Select All&quot;);
      run(&quot;Fill&quot;, &quot;slice&quot;);

}

// Unidirectional registration (\"Mono\" mode) if(r == \"Mono\") {

      for(i = 1; i &lt; numOfInputSlices; i++)
      {
          sourceName = &quot;source&quot; + i;
          targetName = &quot;target&quot; + i;
          // Take 2 consecutive slices (i and i+1).
          selectWindow(&quot;Registration results&quot;);
          setSlice(i);
          run(&quot;Duplicate...&quot;, &quot;title=&quot; + sourceName);    
          selectWindow(&quot;Registration results&quot;);
          setSlice(i+1);
          run(&quot;Duplicate...&quot;, &quot;title=&quot; + targetName);
          // Add corresponding mask.
          selectWindow(&quot;Registration masks&quot;);
          setSlice(i);
          run(&quot;Copy&quot;);
          selectWindow(sourceName);
          run(&quot;Add Slice&quot;);
          run(&quot;Paste&quot;);
          setSlice(1);
      
          if (useMOPS==1)
          {   
              
              // Optional previous MOPS landmarks extraction
              run(&quot;Extract MOPS Correspondences&quot;, &quot;source_image=&quot; + sourceName + &quot; target_image=&quot; + targetName + &quot; steps_per_scale_octave=&quot; + spso + &quot; initial_gaussian_blur=&quot; + igb + &quot; feature_descriptor_width=&quot; + fdw + &quot; minimum_image_size=&quot; + minis + &quot; maximum_image_size=&quot; + maxis + &quot; closest/next_closest_ratio=&quot; + cncr + &quot; maximal_alignment_error=&quot; + maxae + &quot; inlier_ratio=&quot; + ir + &quot; &quot; +  uif + &quot; transformation_class=&quot;+ tc);
              
              print(&quot;Finished MOPS between slice &quot; + i + &quot; and &quot; + (i+1));
          }
      
          // Register with bUnwarpJ
          run(&quot;bUnwarpJ&quot;, &quot;source_image=&quot; + targetName + &quot; target_image=&quot; + sourceName + &quot; registration=&quot; + r + &quot; image_subsample_factor=&quot;+ img_sub_factor + &quot; initial_deformation=&quot; + id + &quot; final_deformation=&quot; + fd + &quot; divergence_weight=&quot; + dw + &quot; curl_weight=&quot; + curlw + &quot; landmark_weight=&quot;+ lw + &quot; image_weight=&quot; + iw + &quot; consistency_weight=&quot; + conw + &quot; stop_threshold=&quot; + st + &quot; &quot; + verbose + str);        
           
          // Wait bUnwarpJ to finish
          while (isOpen(&quot;Registered Source Image&quot;) != 1)
          { 
              wait(1000);
          }     
          wait(1500);
          print(&quot;Finished MONO bUnwarpJ between slice &quot; + i + &quot; (&quot; + sourceName + &quot;) and &quot; + (i+1) + &quot; (&quot; + targetName + &quot;)&quot;);
                  
          // Copy registration result ...
          selectWindow(&quot;Registered Source Image&quot;);
          run(&quot;Copy&quot;);
              
          // ... into the registration results stack 
          selectWindow(&quot;Registration results&quot;);
          run(&quot;Paste&quot;);
          
          // And copy mask too.
          selectWindow(&quot;Registered Source Image&quot;);
          setSlice(3);
          run(&quot;Copy&quot;);
          close();
          selectWindow(&quot;Registration masks&quot;);
          setSlice(i+1);
          run(&quot;Paste&quot;);
          
          // Close temporary source and target windows
          selectWindow(sourceName);
          close();
          selectWindow(targetName);
          close();
      }

} else // Bidirectional registration (\"Fast\" or \"Accurate\" modes) {

      for(i = 1; i &lt; numOfInputSlices; i++)
      {
          sourceName = &quot;source&quot; + i;
          targetName = &quot;target&quot; + i;
          // Take 2 consecutive slices (i and i+1).
          selectWindow(&quot;Registration results&quot;);
          setSlice(i);
          run(&quot;Duplicate...&quot;, &quot;title=&quot; + sourceName);    
          selectWindow(&quot;Registration results&quot;);
          setSlice(i+1);
          run(&quot;Duplicate...&quot;, &quot;title=&quot; + targetName);
          // Add corresponding mask.
          selectWindow(&quot;Registration masks&quot;);
          setSlice(i);
          run(&quot;Copy&quot;);
          selectWindow(sourceName);
          run(&quot;Add Slice&quot;);
          run(&quot;Paste&quot;);
          setSlice(1);
      
          if (useMOPS==1)
          {   
              
              // Optional previous MOPS landmarks extraction
              run(&quot;Extract MOPS Correspondences&quot;, &quot;source_image=&quot; + sourceName + &quot; target_image=&quot; + targetName + &quot; steps_per_scale_octave=&quot; + spso + &quot; initial_gaussian_blur=&quot; + igb + &quot; feature_descriptor_width=&quot; + fdw + &quot; minimum_image_size=&quot; + minis + &quot; maximum_image_size=&quot; + maxis + &quot; closest/next_closest_ratio=&quot; + cncr + &quot; maximal_alignment_error=&quot; + maxae + &quot; inlier_ratio=&quot; + ir + &quot; &quot; +  uif + &quot; transformation_class=&quot;+ tc);
              
              print(&quot;Finished MOPS between slice &quot; + i + &quot; and &quot; + (i+1));
          }
      
          // Register with bUnwarpJ
          run(&quot;bUnwarpJ&quot;, &quot;source_image=&quot; + sourceName + &quot; target_image=&quot; + targetName + &quot; registration=&quot; + r + &quot; initial_deformation=&quot; + id + &quot; final_deformation=&quot; + fd + &quot; divergence_weight=&quot; + dw + &quot; curl_weight=&quot; + curlw + &quot; landmark_weight=&quot;+ lw + &quot; image_weight=&quot; + iw + &quot; consistency_weight=&quot; + conw + &quot; stop_threshold=&quot; + st + &quot; &quot; + verbose + str);        
      
          // Wait bUnwarpJ to finish
          while (isOpen(&quot;Registered Source Image&quot;) != 1)
          { 
              wait(1000);
          }     
          wait(1500);
          print(&quot;Finished bUnwarpJ between slice &quot; + i + &quot; and &quot; + (i+1));
          
          // Close direct registration results window
          selectWindow(&quot;Registered Source Image&quot;);
          close();
          
          // Copy inverse registration result ...
          selectWindow(&quot;Registered Target Image&quot;);
          run(&quot;Copy&quot;);
              
          // ... into the registration results stack 
          selectWindow(&quot;Registration results&quot;);
          run(&quot;Paste&quot;);
          
          // And copy mask too.
          selectWindow(&quot;Registered Target Image&quot;);
          setSlice(3);
          run(&quot;Copy&quot;);
          close();
          selectWindow(&quot;Registration masks&quot;);
          setSlice(i+1);
          run(&quot;Paste&quot;);
          
          // Close temporary source and target windows
          selectWindow(sourceName);
          close();
          selectWindow(targetName);
          close();
      }

} \</code\>
