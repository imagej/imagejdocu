\<code\>

*A simple tool that tracks objects by selecting them with the magic wand
*A new image stack of the tracked object is also recorded *Place
Wand_Track_Tool.ijm in /fiji/macros/toolsets and restart *Clicking the
first button acivates the tool *Clicking the second starts a new track
*Results are recorded in the same format as the manual tracking tool
(<http://rsbweb.nih.gov/ij/plugins/track/track.html>)

//Global variables for cell tracking var gtrack = 1; var number = 1; var
count = 1;

macro \"Wand Track MB Tool -
CfffD00D01D02D03D04D05D06D07D0bD0cD0dD0eD0fD10D11D12D13D14D15D16D17D19D1bD1cD1dD1eD1fD20D21D22D23D24D25D26D2bD2cD2dD2eD2fD30D31D32D33D34D39D3aD3bD3cD3dD3eD3fD40D41D42D43D50D51D52D53D60D61D62D68D69D6aD70D71D77D78D79D7aD7bD7cD7dD84D87D88D89D8aD8bD8cD8dD8eD8fD91D93D94D97D98D99D9aD9bD9cD9dD9eD9fDa3Da4Da7Da8Da9DaaDabDacDadDaeDafDb0Db1Db2Db3Db4Db8Db9DbaDbbDbcDbdDbeDbfDc0Dc1Dc2Dc3Dc4Dc9DcaDcbDccDcdDceDcfDd0Dd1Dd2Dd3Dd4Dd9DdaDdbDdcDddDdeDdfDe0De1De2De3De4De5DeaDebDecDedDeeDefDf0Df1Df2Df3Df4Df5DfbDfcDfdDfeDffC48dD4dD6cDc8Dd7Dd8De6De7Df6C37dD7fDfaC69eDa5C777D45C58dD6dDc6Dd5C999D27D36D37D38D54D63D64D72D73D74D83C8beD5eD75C48dD6bDb7Dc7Dd6C48dD4eDf7C8aeD49D4aD58D59C888D28D46D55D82C59eD96Db6C9beD57C47dD4fD7eDe8De9Df8Df9C7aeD5fD6fC59dDb5Dc5C8beD5aD66C69dD47D65C69eD76D86Da6C9beD5bD5cD5dD85C7aeD48D4bC59eD4cC59dD67C8beD95C6aeD6e\"
{

*some variables track = gtrack; slice = getSliceNumber(); Image =
getTitle(); width = getWidth(); height = getHeight(); *draws the
tracking table

      requires(&quot;1.38m&quot;);
      title1 = Image+&quot;_Tracking Table&quot;;
      title2 = &quot;[&quot;+title1+&quot;]&quot;;
      f = title2;
      if (isOpen(title1)) {
      }
      else {
          if (getVersion&gt;=&quot;1.41g&quot;)
              run(&quot;Table...&quot;, &quot;name=&quot;+title2+&quot; width=1000 height=300&quot;);
          else
              run(&quot;New... &quot;, &quot;name=&quot;+title2+&quot; type=Table width=250 height=600&quot;);
          print(f, &quot;\\Headings: \tTrack\tSlice\tX_R\tY_R\tX_M\tY_M\tWidth\tHeight\tX_B\tY_B&quot;);
      }
      run(&quot;Colors...&quot;, &quot;foreground=white background=white selection=cyan&quot;);
      autoUpdate(false);
      getCursorLoc(x, y, z, flags);
      doWand(x, y, 100, &quot;8-connected&quot;);
      wait(150);

*Checkpoint for ROI size so that if you accidently click outside the
intended region the macro stops and warns you run(\"Set
Measurements\...\", \"center area redirect=None decimal=4\");
run(\"Clear Results\"); run(\"Measure\"); area=(getResult(\"Area\")); if
(area\>3000) { selectWindow(\"Results\"); run(\"Close\");
Dialog.create(\"ROI ERROR!\"); Dialog.addMessage(\"ROI too large! Did
you click outside the cell? Please repeat\"); Dialog.show(); } else{
selectWindow(\"Results\"); run(\"Close\"); selectWindow(Image);
run(\"Copy\"); if (isOpen(Image+\"\_Track\"+track)) {
selectWindow(Image+\"\_Track\"+track); run(\"Add Slice\"); } else{
newImage(Image+\"\_Track\"+track, \"8-bit Black\", width, height, 1); }
run(\"Restore Selection\"); run(\"Paste\"); selectWindow(Image); *Make
measurements on ROI

              run(&quot;Set Measurements...&quot;, &quot;center redirect=None decimal=4&quot;);
              run(&quot;Clear Results&quot;);
              run(&quot;Measure&quot;);

*Rounded results are designed to be compatible with Ibidi Chemotaxis
tool. The exact results are recorded too.
COM_X=round(getResult(\"XM\")); COM_Y=round(getResult(\"YM\"));
X_M=getResult(\"XM\"); Y_M=getResult(\"YM\"); getSelectionBounds(x, y,
width, height); if (isOpen(\"Results\")) { selectWindow(\"Results\");
run(\"Close\"); } run(\"Select None\");
print(f,(number++)+\"\\t\"+(track)+\"\\t\"+(slice)+\"\\t\"+(COM_X)+\"\\t\"+(COM_Y)+\"\\t\"+(X_M)+\"\\t\"+(Y_M)+\"\\t\"+(width)+\"\\t\"+(height)+\"\\t\"+(x)+\"\\t\"+(y));
*advance to next slice

          run(&quot;Next Slice [&gt;]&quot;);
          selectWindow(Image);
      }

}

*You do not need to click it before you start tracking as gtrack is set
to 1 in the first instance. macro \"Add Track Action Tool -
CfffD00D01D02D03D04D05D06D07D0bD0cD0dD0eD0fD10D11D12D13D14D15D16D17D19D1bD1cD1dD1eD1fD20D21D22D23D24D25D26D2bD2cD2dD2eD2fD30D31D32D33D34D39D3aD3bD3cD3dD3eD3fD40D41D42D43D50D51D52D53D60D61D62D68D69D6aD70D71D77D78D79D7aD7bD7cD7dD84D87D88D89D8aD8bD8cD8dD8eD8fD91D93D94D97D98D99D9fDa3Da4Da7Da8Db0Db1Db2Db3Db4Db8DbcDc0Dc1Dc2Dc3Dc4DcbDccDcdDd0Dd1Dd2Dd3Dd4DdcDe0De1De2De3De4De5Df0Df1Df2Df3Df4Df5DffC37dD7fC777D45C69dD47D65C777D08D09D0aD18D1aD29D2aD35D44D56D80D81D90D92Da0Da1Da2C48dD6bDb7Dc7Dd6Cbd9DabDbaDbbDceDecC8beD5eD75C582DaeDeaDeeC48dD4dD6cDc8Dd7Dd8De6De7Df6C999D27D36D37D38D54D63D64D72D73D74D83C7aeD48D4bC8b6DadDbeDdbDdeDebDedC59dDb5Dc5C9beD57C361D9dC48dD4eDf7C888D28D46D55D82C69eDa5C58dD6dDc6Dd5Cbd9DacC684Dc9C8aeD49D4aD58D59C8b6DdaC59dD67C9beD5bD5cD5dD85C47dD4fD7eDe8Df8Df9C69eD76D86Da6C8beD5aD66C473De9C7aeD5fD6fC8beD95C473D9cC6aeD6eCdebDcaC8a6DaaC59eD96Db6C59eD4cC695Da9Db9C584D9bDd9C8b6DbdDddC685D9a\"
{ setTool(\"rectangle\"); waitForUser(\"Select stack\", \"Select the
master image stack, then click OK\"); Image = getTitle(); dir =
File.directory(); gtrack++; Dialog.create(\"New Track Added\");
Dialog.addMessage(\"A new track has been added to the analysis. New
Track = Track \"+gtrack); Dialog.show(); setSlice(1); last_track =
gtrack-1; if (isOpen(Image+\"\_Track\"+last_track)) {
selectWindow(Image+\"\_Track\"+last_track);
save(dir+Image+\"\_Track\"+last_track);
selectWindow(Image+\"\_Track\"+last_track); run(\"Close\"); } else {} }
*Icons used courtesy of: <http://www.famfamfam.com/lab/icons/silk/>
//Richard Mort 29/01/2013

\</code\>
