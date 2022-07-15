**Hyper with Stacks** A toolset facilitating manual extraction of
focused slices from hyperstacks

## Introduction

The following toolset was designed to facilitate manual extraction of
in-focus z-slices from 4D and 5D (x,y,z,t,c) sets of timelapse images
such as microscopy of cancer cell migration on the chick embryo or
mouse. The toolset enables a user to scroll through a 4 or 5D dataset
displayed as a hyperstack, Setting the Focus (with the F1 key or by
clicking the toolset button), and then split out (F2) of the hyperstack
a simple 3D stack (x,y,time) of all the best focus points. Multiple
channels can be split out using the index generated by setting the
focus. Selecting the most focused z-position for each timepoint is
possible but not necessary. The program will use the current z position
for all the timepoints inbetween the previous timepoint and current
timepoint. A log is printed out that can be saved as a reference.

## Author/s

William J Ashby william.j.ashby@vanderbilt.edu and hopefully others as
they make worthwhile contributions to this tool

## Acknowledgements

I want to thank the creator/s of the Magic Montage toolset. Before
finding [Magic Montage](/howto/working/work_with_magic_montage) I rarely
used the toolsets or even realized that I could make them using macro
language.

## Features

The toolset provides buttons to do the following:

1.  Convert a stack to hyperstack (In order to save time, the default
    values can be adjusted in the code).
2.  Set the focus point F1 (i.e. index your z position) for all the
    timepoints inbetween the previously indexed (or first) timepoint and
    the current timepoint.
3.  Split out the currently selected channel from your hyperstack using
    the index of focused z positions.
4.  Re-initialize F2, which sets the entire z index to the current z
    position and resets the previous timepoint to 0.

## Installation

Simply save the code as a text file in the \>Macros\>Toolsets folder. It
will show up in the toolsets dropdown under the name of the text file,
Hyper with Stacks or whatever you name it. Using FIJI on a Mac this
folder is found by selecting show package contents on the FIJI
application.

## Code

\<code java\> // Hyper with Stacks.txt \--version\--1.5 2011-09-23 //
Initial Toolset for manually extracting focused time series from
hyperstacks by William J. Ashby, Vanderbilt University, Chemical and
Physical Biology // \"Summary of your worthwhile addition\" by \"Your
Name\" and \"Your Institute \...\" //

var v=versionCheck(); function versionCheck() {

      requires(&quot;1.41f&quot;);
      return 1;

}

var stackOrder = newArray(\"xyzct\", \"xyczt(default)\", \"xyctz\",
\"xyztc\", \"xytcz\",\"xytzc\"); var displayMode = newArray(\"Color\",
\"Composite\", \"Grayscale\"); var zNum=0; var cNum=0; var tNum=0; var
zz=0; var cc=0; var tt=0; var zArray; var width; var height; var
initialize = true; var t0=0;

macro \"Blank Action Tool - \"{ }

macro \"Stack to Hyperstack Action Tool -
C000D00D01D02D03D04D05D06D07D08D09D0aD0bD0cD0dD0eD0fD10D11D12D13D15D16D1bD1cD1dD1eD1fD20D21D22D23D2bD2cD2dD2eD2fD30D31D32D33D34D38D39D3aD3bD3dD3eD3fD40D41D42D43D44D48D49D4aD4dD4eD4fD50D51D52D53D54D57D58D59D5aD5dD5eD5fD60D61D62D63D64D67D68D69D6aD6dD6eD6fD77D78D79D85D86D87D88D89D8aD8bD96D97D98D99D9aDa7Da8Da9Db0Db8CfffD14D17D18D19D1aD24D2aD3cD47D70D71D80D81D82D8fD90Da0Da1Da2Da3Da4DadDaeDafDb1Db2Db3Db4Db5DbcDbdDbeDbfDc0DccDcdDd0DdaDdcDddDe0De8De9DeaDecDedDf0Df8Df9DfaDfcDfdCf00D91D92D93Dc1Dc2Dc3Dc4Dc5Dc6Dd1Dd2Dd3Dd4Dd5Dd6Dd7De1De2De3De4De5De6De7Df1Df2Df3Df4Df5Df6Df7C00fD29D8cD9eD9fDcbDceDcfDdbDdeDdfDebDeeDefDfbDfeDffC0f0D25D26D27D28D35D36D37D45D46D4bD4cD55D56D5bD5cD65D66D6bD6cD72D73D74D75D76D7aD7bD7cD7dD7eD7fD83D84D8dD8eD94D95D9bD9cD9dDa5Da6DaaDabDacDb6Db7Db9DbaDbbDc7Dc8Dc9DcaDd8Dd9\"{

// In order to make my personal defaults automatically appear in the
\"Stack to Hyperstack‚Ä¶\" command, the following lines of code recreate
the dialog window, display my recreation and allow user modification as
necessary, and then run the \"Stack to Hyperstack‚Ä¶\" with the values
provided from the dialog window. // Customize the defaults below when
working with multiple files of data that have identical numbers of
channels, z-slices, and timepoints

      Dialog.create(&quot;Convert to Hyperstack&quot;);
          Dialog.addChoice(&quot;Order&quot;, stackOrder);  //the stackorder is found a few lines above and can be rearranged in order to put your default order first

      // To make this macro use your default number of channels, slices, and time frames
      // simply change the numbers 2, 5, and 1 in the following 3 lines of code.
      Dialog.addNumber(&quot;Channels (c):&quot;, 2);  
      Dialog.addNumber(&quot;Slices (z):&quot;, 5);  
      Dialog.addNumber(&quot;Frames (t):&quot;, 1);

      Dialog.addChoice(&quot;Display Mode:&quot;, displayMode); 
      Dialog.show();  //Displays the dialog box in order to get user input for the conversion from stack to hyperstack 
              //or hyperstack to hyperstack if you already have the data in a hyperstack 
      
      //Assigning the entered values to variables   
      ans1=Dialog.getChoice();
      cNum=Dialog.getNumber(); 
      zNum=Dialog.getNumber(); 
      tNum=Dialog.getNumber(); 
      ans2=Dialog.getChoice();

      zArray = newArray(tNum); //Initializing zArray which stores the index of in-focus z values over time
      
      run(&quot;8-bit&quot;);  //This line could possibly be omitted after testing for compatibility with other size stacks
      run(&quot;Stack to Hyperstack...&quot;, &quot;order=&quot;+ans1+&quot; channels=&quot;+cNum+&quot; slices=&quot;+zNum+&quot; frames=&quot;+tNum+&quot; display=&quot;+ans2+&quot;&quot;);

//End of dialog section

      initialize=true;
      print(&quot;\nInitialized&quot;);

}

macro \"F1 Set Focus Action Tool -
C000C111C222D34D35D36D37D38D39D3aD3bD3cD44D48D54D58D64D68D74Da4Da5Da6Da7Da8Da9DaaDabDacC222C333C444C555C666C777C888C999CaaaCbbbCcccCdddCeeeCfffD00D01D02D03D04D05D06D07D08D09D0aD0bD0cD0dD0eD0fD10D11D12D13D14D15D16D17D18D19D1aD1bD1cD1dD1eD1fD20D21D22D23D24D25D26D27D28D29D2aD2bD2cD2dD2eD2fD30D31D32D33D3dD3eD3fD40D41D42D43D45D46D47D49D4aD4bD4cD4dD4eD4fD50D51D52D53D55D56D57D59D5aD5bD5cD5dD5eD5fD60D61D62D63D65D66D67D69D6aD6bD6cD6dD6eD6fD70D71D72D73D75D76D77D78D79D7aD7bD7cD7dD7eD7fD80D81D82D83D84D85D86D87D88D89D8aD8bD8cD8dD8eD8fD90D91D92D93D94D95D96D97D98D99D9aD9bD9cD9dD9eD9fDa0Da1Da2Da3DadDaeDafDb0Db1Db2Db3Db4Db5Db6Db7Db8Db9DbaDbbDbcDbdDbeDbfDc0Dc1Dc2Dc3Dc4Dc5Dc6Dc7Dc8Dc9DcaDcbDccDcdDceDcfDd0Dd1Dd2Dd3Dd4Dd5Dd6Dd7Dd8Dd9DdaDdbDdcDddDdeDdfDe0De1De2De3De4De5De6De7De8De9DeaDebDecDedDeeDefDf0Df1Df2Df3Df4Df5Df6Df7Df8Df9DfaDfbDfcDfdDfeDff\"{

      run(&quot;Set Focus [F1]&quot;);

}

macro \"Set Focus \[F1\]\" {

      Stack.getPosition(cc,zz,tt);
      if(initialize){
          initialize=false;
          if (zArray==0){
              if (Stack.isHyperstack) {
                  Stack.getDimensions(width, height, cNum, zNum, tNum);
                  zArray=newArray(tNum);
                  print(&quot;\nInitialized&quot;);
              } else {
                  print(&quot;Close the error window and click the Run Stack to Hyperstack button&quot;);
              }   
          }
           
          Array.fill(zArray, zz);
          t0=0;
      }
      for (i=t0; i&lt;tt; i++){
          zArray[i]=zz;
      }
      if (t0&lt;tt) 
          print(&quot;z is set to: &quot;+zz+&quot;  for t: &quot;+t0+&quot; through &quot;+tt);
      if (t0&gt;=tt) 
          print(&quot;current t=&quot;+tt+&quot;  Proceed to t&gt;&quot;+t0+&quot; or re-initialize&quot;);
      else 
          t0=tt;

}

macro \"Split Stack Action Tool - R9077C888R9977R0977\"{

      if (nSlices==1)
              exit(&quot;Stack required&quot;);
      setBatchMode(true);
      stack1 = getImageID;
      w = getWidth; h = getHeight;  title = getTitle;
      stack2 = 0;
      n = zArray.length+1;
      Stack.getPosition(c,z,t);
      for (i=1; i&lt;n; i++) {
          showProgress(i, n);
          selectImage(stack1);
          Stack.setPosition(c,zArray[i-1],i);
          run(&quot;Copy&quot;);
          if (stack2==0) {
              newImage(&quot;Focused_C&quot;+c+&quot;_&quot;+title, &quot;8-bit&quot;, w, h, 1);
              stack2 = getImageID;
          } else {
              selectImage(stack2);
              run(&quot;Add Slice&quot;);
          }
          run(&quot;Paste&quot;);
      }
      setSlice(1);
      setBatchMode(false);
      print(&quot;Successfully split out channel &quot;+c+&quot;\nTo split out a different channel using this z-index, \nsimply change the channel in the hyperstack and repeat&quot;); 

}

macro \"F2 ReInitialize Action Tool -
C000C111C222D14D15D16D17D18D19D1aD1bD1cD24D28D34D38D44D48D54D85D86D8bD8cD94D9aD9cDa4Da9DacDb4Db8DbcDc5Dc6Dc7DccC222C333C444C555C666C777C888C999CaaaCbbbCcccCdddCeeeCfffD00D01D02D03D04D05D06D07D08D09D0aD0bD0cD0dD0eD0fD10D11D12D13D1dD1eD1fD20D21D22D23D25D26D27D29D2aD2bD2cD2dD2eD2fD30D31D32D33D35D36D37D39D3aD3bD3cD3dD3eD3fD40D41D42D43D45D46D47D49D4aD4bD4cD4dD4eD4fD50D51D52D53D55D56D57D58D59D5aD5bD5cD5dD5eD5fD60D61D62D63D64D65D66D67D68D69D6aD6bD6cD6dD6eD6fD70D71D72D73D74D75D76D77D78D79D7aD7bD7cD7dD7eD7fD80D81D82D83D84D87D88D89D8aD8dD8eD8fD90D91D92D93D95D96D97D98D99D9bD9dD9eD9fDa0Da1Da2Da3Da5Da6Da7Da8DaaDabDadDaeDafDb0Db1Db2Db3Db5Db6Db7Db9DbaDbbDbdDbeDbfDc0Dc1Dc2Dc3Dc4Dc8Dc9DcaDcbDcdDceDcfDd0Dd1Dd2Dd3Dd4Dd5Dd6Dd7Dd8Dd9DdaDdbDdcDddDdeDdfDe0De1De2De3De4De5De6De7De8De9DeaDebDecDedDeeDefDf0Df1Df2Df3Df4Df5Df6Df7Df8Df9DfaDfbDfcDfdDfeDff\"{

      run(&quot;Re-Initialize [F2]&quot;);

}

macro \"Re-Initialize \[F2\]\" {

          initialize=true;
      print(&quot;Re-initialized, proceed with selection of focused z slices&quot;);

}

var pmCmds = newMenu(\"Popup Menu\",

          newArray(&quot;Set Focus [F1]&quot;, &quot;Re-Initialize [F2]&quot;,&quot;-&quot;,&quot;Copy&quot;, &quot;Paste&quot;,&quot;Rename...&quot;)
      );

macro \"Popup Menu\" {

      cmd = getArgument;
      run(cmd);

}

\</code\>

## License

The above code is made freely available for use and modification in
keeping with the Creative Commons license see [CC
Attribution-Noncommercial-Share
Alike](http://creativecommons.org/licenses/by-nc-sa/3.0/). ImageJ/FIJI
programmers and aspiring programmers are welcome to contribute here. I,
William J Ashby, the initial creator and first author invite others who
make worthwhile contributions to add themselves to the list of authors
both on this wikipage and in the above code.

## Known Bugs

The program will throw an error if you start setting focus points (i.e.
indexing z positions) on a stack without converting it to a hyperstack.
A message to run Stacks to Hyperstacks is displayed and the error
doesn\'t cause problems otherwise in the program.

## Future Additions/Improvements

Anyone and everyone are welcome to take what I have started and
implement new buttons and features. You may also request additions to
the toolset here but I will probably have to leave the development of
future additions to others.

1.  The ability to write the index of in-focus z positions to file and
    read in the index from this file.