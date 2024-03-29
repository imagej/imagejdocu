# Python DM3 Reader

**This is an adaptation of the DM3_Reader plug-in as a Python module. It
may by used to extract thumbnail, image data and metadata from GATAN
DigitalMicrograph 3 files.**

This python module is a transposition and adaptation of the [DM3_Reader
ImageJ plug-in](http://rsb.info.nih.gov/ij/plugins/DM3_Reader.html) by
Greg Jefferis. It was initially meant to be called by a script indexing
electron microscope images into a database.

This module now allows to extract various metadata (specimen, operator,
HV, MAG, etc.) from GATAN DigitalMicrograph DM3 files. It may also
extract and dump all metadata (\"Tags\") and pass thumbnail and image
data as PIL Images or Numpy arrays, as well as save the thumbnail view
in a PNG file.

Use in your own script would typically require lines such as:

\<code python\> import DM3lib as dm3 import matplotlib.pyplot as plt \#
parse DM3 file dm3f = dm3.DM3(\"sample.dm3\") \# print some useful image
information print dm3f.info print \"pixel size = %s %s\"%dm3f.pxsize \#
display image plt.matshow(dm3f.imagedata, vmin=dm3f.cuts\[0\],
vmax=dm3f.cuts\[1\]) plt.colorbar(shrink=.8) \</code\>

Please note: It has only been tested on single-image files (i.e. not
stacks) and not all data types are implemented.

![\*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1](/filelist&gt;/plugin/utilities/python_dm3_reader/*&amp;style=table&amp;tableheader=1&amp;tableshowdate=1&amp;tableshowsize=1)

NEW: version 1.0, a significant code overhaul, and a more complete
distribution; support added for more image data types.

//<NOTES://>

-   Dependencies : [Python Imaging
    Library](http://www.pythonware.com/products/pil/) ;
    [NumPy](http://www.numpy.org)/[SciPy](http://www.scipy.org)
-   Python 3 not supported (for now)

Project homepage :
[microscopies.med.univ-tours.fr/pydm3reader](http://microscopies.med.univ-tours.fr/pydm3reader/)
