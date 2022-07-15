# Export / Import Multi-point set

Bellow you can find two macros aimed to work with multi-point set in
ImageJ/Fiji. Basically user just uses the default tool \"multi-point\"
to select some points in image and then using this macro he can simply
export them into TXT file (used format is compatible with
[ITK](http://www.itk.org/)/[Elastix](http://elastix.isi.uu.nl/)) or CSV
file. On the other hand when you have this points exported/saved you can
simply import them to any other image using the second macro.

-   **Author:** Jiří Borovec \<jiri.borovec(at)fel.cvut.cz\>
-   **Date:** 24/11/2013
-   **License:** GPL v2

## Export Multi-point set

This macro export a set of point (e.g. landmarks, feature points) into
TXT or CSV file.

Download: ![](/macro/export_multipointset.ijm)

You can see the code here:

\<code java\> // clean results run(\"Clear Results\"); // get all points
getSelectionCoordinates(xCoordinates, yCoordinates);

// chose name pattern for exporting fileName = File.openDialog(\"Select
the file for export\");

// Exporting as TXT format (ITK compatible) file =
File.open(fileName+\".txt\"); print(file, \"point\"); print(file,
lengthOf(xCoordinates) ); for(i=0; i\<lengthOf(xCoordinates); i++) {

      print(file, xCoordinates[i] + &quot; &quot; + yCoordinates[i]);

}

// export as CSV file for(i=0; i\<lengthOf(xCoordinates); i++) {

      setResult(&quot;X&quot;, i, xCoordinates[i]);
      setResult(&quot;Y&quot;, i, yCoordinates[i]);

} updateResults(); saveAs(\"Results\", fileName+\".csv\"); \</code\>

## Import Multi-point set

This macro import a set of points (e.g. landmarks, feature points) from
TXT or CSV file.

Download: ![](/macro/import_multipointset.ijm)

You can see the code here:

\<code java\> // ask for a file to be imported fileName =
File.openDialog(\"Select the file to import\"); allText =
File.openAsString(fileName); tmp = split(fileName,\".\"); // get file
format {txt, csv} posix = tmp\[lengthOf(tmp)-1\]; // parse text by lines
text = split(allText, \"\\n\");

// define array for points var xpoints = newArray; var ypoints =
newArray;

// in case input is in TXT format if (posix==\"txt\") {

      print(&quot;importing TXT point set...&quot;);
      //these are the column indexes
      hdr = split(text[0]);
      nbPoints = split(text[1]);
      iX = 0; iY = 1;
      // loading and parsing each line
      for (i = 2; i &lt; (text.length); i++){
         line = split(text[i],&quot; &quot;);
         setOption(&quot;ExpandableArrays&quot;, true);   
         xpoints[i-2] = parseInt(line[iX]);
         ypoints[i-2] = parseInt(line[iY]); 
         print(&quot;p(&quot;+i-1+&quot;) [&quot;+xpoints[i-2]+&quot;; &quot;+ypoints[i-2]+&quot;]&quot;); 
      } 

// in case input is in CSV format } else if (posix==\"csv\") {

      print(&quot;importing CSV point set...&quot;);
      //these are the column indexes
      hdr = split(text[0]);
      iLabel = 0; iX = 1; iY = 2;
      // loading and parsing each line
      for (i = 1; i &lt; (text.length); i++){
         line = split(text[i],&quot;,&quot;);
         setOption(&quot;ExpandableArrays&quot;, true);   
         xpoints[i-1] = parseInt(line[iX]);
         ypoints[i-1] = parseInt(line[iY]);
         print(&quot;p(&quot;+i+&quot;) [&quot;+xpoints[i-1]+&quot;; &quot;+ypoints[i-1]+&quot;]&quot;); 
      } 

// in case of any other format } else {

      print(&quot;not supported format...&quot;); 

}

// show the points in the image makeSelection(\"point\", xpoints,
ypoints); \</code\>
