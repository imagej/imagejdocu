\<html\> \<h3\> LIST OF TAPAS \</h3\> \<table border=\"2\"\>

      &lt;tr&gt;&lt;td&gt;Name and description&lt;/td&gt;&lt;td&gt;Parameters&lt;/td&gt;&lt;td&gt;Comments/default&lt;/td&gt;&lt;td&gt;Online&lt;/td&gt;&lt;/tr&gt;

\<tr\>

      &lt;td colspan=&quot;4&quot;&gt;&lt;b&gt;INPUT/OUTPUT&lt;/b&gt;&lt;/td&gt;
    &lt;/tr&gt;   
      &lt;tr&gt;&lt;td&gt;&lt;b&gt;input&lt;/b&gt;:load from Omero&lt;/td&gt;
      &lt;td&gt;&lt;b&gt;project&lt;/b&gt;:name or unique part of project name&lt;br&gt;

\<b\>dataset\</b\>:name or unique part of dataset name\<br\>
\<b\>name\</b\>:name of the data (change to image?)\<br\>
\<b\>channel\</b\>:the channel number\<br\> \<b\>frame\</b\>:the frame
number\</td\> \<td\>(should be first process)\<br\>
\<b\>project\</b\>:?project?\<br\> \<b\>dataset\</b\>: ?dataset?\<br\>
\<b\>name\</b\>:?name?\<br\> \<b\>channel\</b\>:?channel?\<br\>
\<b\>frame\</b\>:?frame?\</td\> \<td\>No\</td\> \</tr\>

\<tr\> \<td\>\<b\>link\</b\>:create a link to an image in Omero\</td\>
\<td\>\<b\>project\</b\>:name of project\<br\> \<b\>dataset\</b\>:name
of dataset \<br\> \<b\>name\</b\>:name of the data\<br\>
\<b\>channel\</b\>:the channel number\<br\> \<b\>frame\</b\>:the frame
number\<br\> \<b\>link\</b\>:the name of the link\</td\>
\<td\>\<b\>project\</b\>:?project?\<br\> \<b\>dataset\</b\>:
?dataset?\<br\> \<b\>name\</b\>:?name?\<br\>
\<b\>channel\</b\>:?channel?\<br\> \<b\>frame\</b\>:?frame?\</td\>
\<td\>No\</td\> \</tr\>

\<tr\> \<td\>\<b\>omero\</b\>:save the current image in Omero\</td\>
\<td\>\<b\>project\</b\>:name of project\<br\> \<b\>dataset\</b\>:name
of dataset \<br\> \<b\>name\</b\>:name of the data\<br\>\</td\>
\<td\>\<b\>project\</b\>:?project?\<br\> \<b\>dataset\</b\>:
?dataset?\<br\> Will replace previous version if the image if
present\</td\> \<td\>No\</td\> \</tr\>

\<tr\>\<td\>\<b\>load\</b\>:load an image as a file\</td\>

      &lt;td&gt;&lt;b&gt;dir&lt;/b&gt;:directory&lt;br&gt;

\<b\>file\</b\>:file name\<br\> \</td\> \<td\>(for file)\<br\> (for
dir)\<br\>\</td\> \<td\>No\</td\> \</tr\>

\<tr\> \<td\>\<b\>sequence\</b\>:load a sequence of 2D images from a
directory\</td\> \<td\>\<b\>dir\</b\>:directory\<br\>
\<b\>name\</b\>:part of file names\<br\> \<b\>dimension\</b\>:dimension
of the sequence\</td\> \<td\>(for file)\<br\> (for dir)\<br\>
\<b\>name\</b\>:\* for all files in directory\<br\>
\<b\>dimension\</b\>:Z for 3D sequence or T for temporal sequence\<br\>
Will automatically exclude system files and not image files \</td\>
\<td\>No\</td\> \</tr\>

\<tr\> \<td\>\<b\>composite\</b\>:merge channels to create a composite
or RGB image\</td\> \<td\>\<b\>dir\</b\>:directory\<br\>
\<b\>list\</b\>:list of files\<br\> \<b\>rgb\</b\>:create rgb image
(yes) or composite (no)\</td\> \<td\>(for file)\<br\> (for dir)\<br\>
\<b\>rgb\</b\>:no\<br\> \</td\> \<td\>No\</td\> \</tr\>

\<tr\>\<td\>\<b\>save\</b\>:save an image as a file\</td\>
\<td\>\<b\>dir\</b\>:directory\<br\> \<b\>file\</b\>:name of the
file\</td\> \<td\>(for file)\<br\> (for dir)\<br\>\</td\>
\<td\>Yes\</td\>

      &lt;/tr&gt;
      
      &lt;tr&gt;

\<td\>\<b\>attach\</b\>:attach a list of files to a data in Omero\</td\>
\<td\>\<b\>project\</b\>:name of project\<br\> \<b\>dataset\</b\>:name
of dataset \<br\> \<b\>name\</b\>:name of the data\<br\>
\<b\>dir\</b\>:directory of the files to be attached\<br\>
\<b\>list\</b\>:list of files names separated by \<b\>,\</b\>\<br\>
\</td\> \<td\>\<b\>project\</b\>:?project?\<br\>
\<b\>dataset\</b\>:?dataset?\<br\> \<b\>name\</b\>:?name?\<br\>\</td\>
\<td\>No\</td\> \</tr\>

      &lt;tr&gt;&lt;td&gt;&lt;b&gt;delete&lt;/b&gt;:delete a list of files&lt;/td&gt;
      &lt;td&gt;&lt;b&gt;dir&lt;/b&gt;:directory of the files to be deleted&lt;br&gt;

\<b\>list\</b\>:list of files names separated by \<b\>,\</b\>\<br\>
\<b\>format\</b\>:file format to save\</td\> \<td\>(for file)\<br\> (for
dir)\<br\> \<b\>format\</b\>:tif by default, else can be zip\</td\>
\<td\>No\</td\>

      &lt;/tr&gt;
      &lt;/html&gt;
