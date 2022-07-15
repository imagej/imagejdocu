\<code\> // Tiled autofocus hyperstack macro // Breaks down the image
into ROIs of user defined size // Selects the in focus slice for each
ROI (in each frame of the hyperstack) and creates a new stack // of
montaged in-focus ROIs for each frame

// Based on algorithm F-11 \"Normalized Variance\" // In: Sun et al.,
2004. MICROSCOPY RESEARCH AND TECHNIQUE 65, 139--149. // And the
original macro by Andy Weller
<http://imagejdocu.tudor.lu/doku.php?id=macro:normalized_variance>

//Get image details type = bitDepth(); if (type==8) {type=\"8-bit\";}
else {if(type==16) {type=\"16-bit\";} else{if(type==32)
{type=\"32-bit\";} else {if(type==24) {type=\"RGB\";}}}}
StackID=getTitle(); Stack.getDimensions(width, height, channels, slices,
frames);

//Check its in the correct format if (channels\>1) {exit(\"The
hyperstack has 2-channels please reduce dimensionality\")} else{} if
(channels==frames) {exit(\"The stack does not contain multiple
z-positions\")} else{}

//Prompt for divider Dialog.create(\"Select number of tiles\");
Dialog.addMessage(\"The number of tiles must be divisible by 4\");
Dialog.addNumber(\"Tile number:\", 4); Dialog.show(); tiles =
Dialog.getNumber();

//Divide image into non-overlapping ROIs roiManager(\"reset\");
run(\"Select None\"); Stack.getDimensions(width, height, channels,
slices, frames);

//note the divider must be a multiple of 4!!!!!!!!!

x = 0; y = 0; width = width/tiles; height = height/tiles; spacing = 0;
numRow = tiles; numCol = tiles;

for(i = 0; i \< numRow; i++) {

      for(j = 0; j &lt; numCol; j++)
      {
          xOffset = j * (width);
          yOffset = i * (height);
          makeRectangle(x + xOffset, y + yOffset, width, height);
          roiManager(&quot;Add&quot;);
          
      }       

}

roiManager(\"Show All\"); number_ROI = roiManager(\"count\");
setBatchMode(true);

//Work through the ROI set and pick the most infocus slice for each ROI
for (k=1; k\<=frames; k++) { Stack.setFrame(k);

      for (z=0; z&lt;number_ROI; z++){
          normVar = 0;
          normVar1 = 0;
          m=0;
          mean=0;
          stdev=0;
         for (l=1; l&lt;=slices; l++){ 
                 selectWindow(StackID);
                 run(&quot;Select None&quot;);
                 roiManager(&quot;Select&quot;, z);
                 Stack.setFrame(k);
                 Stack.setSlice(l);
                 getStatistics(area, mean, min, max, std, histogram);
                 normVar = std*std/mean;
                    if (normVar&gt;normVar1) { 
                   m = l;
                   normVar1=normVar;}
                      else {normVar1 = normVar1;}
      }

//Build a new stack of the in-focus tiles at each timepoint
selectWindow(StackID); run(\"Select None\"); roiManager(\"Select\", z);
Stack.setFrame(k); Stack.setSlice(m); run(\"Copy\"); if
(isOpen(StackID+\"\_Focused\")){

                  selectWindow(StackID+&quot;_Focused&quot;);
                  if (z==0) {run(&quot;Add Slice&quot;);}
              }
              else{
                  newImage(StackID+&quot;_Focused&quot;, type, 512, 512, 1);
              }

run(\"Restore Selection\"); run(\"Paste\"); selectWindow(StackID);
Stack.setSlice(l);

        }

} selectWindow(\"ROI Manager\"); run(\"Close\"); setBatchMode(\"exit and
display\");

*Versions: * 0.1 15/08/2013 // 0.2 16/07/2014 - fixed bug in line 77

//Richard Mort 27/09/2018 \</code\>
