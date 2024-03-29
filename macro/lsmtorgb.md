### Convert selected channels from LSM files to RGB

LSM files should open as composite images or hyperstacks. That is
usually the most convenient formats, but in some rare cases it might be
necessary to convert them to RGB images. (example: the Puncta_Analyzer
plugin requires RGB input images.)

The following macro allows assigning lsm channels to channels of an RGB
image.

#### Installation

-   Download ![this file](/macro/lsm_to_rgb.txt) and put it in the
    plugins/macros/ folder.
-   Restart ImageJ.
-   Open an LSM file.
-   Choose Plugins-\>Macros-\>LSM to RGB

#### User interface

![](/macro/lsm2rgb.jpg)

#### Code

\<code java\> // converts selected lsm channels // to an RGB image. //
jm,2013-02-10.

requires(\"1.47\"); var ac=\"\"; t = getTitle(); lsm=getImageID;

setBatchMode(true); run(\"Duplicate\...\", \"title=temp duplicate\");
Stack.getDimensions(width, height, channels, slices, frames); if
(bitDepth\>8)
exit(`+bitDepth+'-bit LSM images cannot be safely cast to RGB'); if (Stack.isHyperstack&&) run("Reduce Dimensionality...", "channels keep"); c = newArray(channels+1); for (i=0;i<channels;i++) { Stack.setChannel(i+1); c[i]=`+(i+1)+\':\'+getInfo(\'slice.label\');

      ac=''+ac+'0';

} c\[channels\]=\'None\';

Dialog.create(\"LSM to RGB convert\");

      Dialog.addMessage(&quot;Re-assign lsm channels to RGB channels&quot;);
      Dialog.addChoice(&quot;Red&quot;,c,'None');
      Dialog.addChoice(&quot;Green&quot;,c,'None');
      Dialog.addChoice(&quot;Blue&quot;,c,'None');

Dialog.show();

rc = Dialog.getChoice(); gc = Dialog.getChoice(); bc =
Dialog.getChoice();

activate(rc,\'Red\'); activate(gc,\'Green\'); activate(bc,\'Blue\');
Stack.setDisplayMode(\'composite\'); Stack.setActiveChannels(ac);

run(\"RGB Color\"); rename (t+\' (RGB)\'); selectImage(lsm); close();
setBatchMode(false);

function activate(ch,lut) {

      if (ch!='None') {
          ch = split(ch,&quot;:&quot;); 
          ch=ch[0];
          ac = substring(ac,0,ch-1)+'1'+substring(ac,ch);
      Stack.setChannel(ch);
      run(lut);
      }

} \</code\>
