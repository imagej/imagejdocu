# Setting up ij tools in Galaxy

\<html\> \<object width=\"560\" height=\"315\"\>\<param name=\"movie\"
value=\"*www.youtube-nocookie.com/v/zxRK6anrLgo?version=3&amp;hl=en_GB\"\>\</param\>\<param
name=\"allowFullScreen\" value=\"true\"\>\</param\>\<param
name=\"allowscriptaccess\" value=\"always\"\>\</param\>\<embed
src=\"*www.youtube-nocookie.com/v/zxRK6anrLgo?version=3&amp;hl=en_GB\"
type=\"application/x-shockwave-flash\" width=\"560\" height=\"315\"
allowscriptaccess=\"always\"
allowfullscreen=\"true\"\>\</embed\>\</object\> \</html\>

## Disclaimer

This is just a proof of concept. Only tested on my 10.8.5 Mac.

\<note\> So far only TIF as input, TIF as output. \</note\>

## Background

Galaxy is an open, web-based platform for data intensive biomedical
research. You have tools for making data available and to process these
data. Galaxy offers a toolshed with extra tools you can install. The
toolshed has a \'Image processing\' section, but it was empty. A similar
project by CSIRO <http://cloudimaging.blogspot.com.au/> makes some
custom IP tools available, but not ImageJ, so I\'m giving a try.

## Installation

Just follow this tutorial:
<https://wiki.galaxyproject.org/Admin/GetGalaxy>

It was enough to get Galaxy running on my mac.

## Add ImageJ tools

-   Create an **imagej** folder in your **galaxy-dist/tools** folder
-   put ij.jar in the fresh **galaxy-dist/tools/imagej** folder
-   add the new tools definition files in **galaxy-dist/tools/imagej**
    as well

\<note info\> in my case, each new tool consists of a tool definition
file (xml) that describes inputs, outputs and a script (pyhton) that
takes care of creating a proper ImageJ macro and calls it.

Get them all from GitHub : <https://github.com/mutterer/ij-galaxy>
\</note\>

-   edit **galaxy-dist/tool_conf.xml** to account for the new tools

\<file java galaxy-dist/tool_conf.xml\>

    add this section to existing configuration
    &lt;section id=&quot;imagej&quot; name=&quot;Image Processing&quot;&gt;
      &lt;tool file=&quot;data_source/upload.xml&quot; /&gt;
      &lt;tool file=&quot;imagej/extractChannelAs32bit.xml&quot; /&gt;
      &lt;tool file=&quot;imagej/ijFilters.xml&quot; /&gt;   
      &lt;tool file=&quot;imagej/pixelMath.xml&quot; /&gt;   
      &lt;tool file=&quot;imagej/calculatorMacro.xml&quot; /&gt;   
      &lt;tool file=&quot;imagej/applyMacro.xml&quot; /&gt;
    &lt;/section&gt;

\</file\>

-   stop and reload your Galaxy instance

### Workflows

Once you have working tools, you can also chain them into workflows.

\<html\> \<object width=\"560\" height=\"315\"\>\<param name=\"movie\"
value=\"*www.youtube-nocookie.com/v/zxRK6anrLgo?version=3&amp;hl=en_GB\"\>\</param\>\<param
name=\"allowFullScreen\" value=\"true\"\>\</param\>\<param
name=\"allowscriptaccess\" value=\"always\"\>\</param\>\<embed
src=\"*www.youtube-nocookie.com/v/RzLvHloa5EU?version=3&amp;hl=en_GB\"
type=\"application/x-shockwave-flash\" width=\"560\" height=\"315\"
allowscriptaccess=\"always\"
allowfullscreen=\"true\"\>\</embed\>\</object\> \</html\>
