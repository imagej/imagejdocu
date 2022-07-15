# How to Import Compressed Videos into ImageJ in Windows

The following instructions explain how to import a wide variety of
compressed videos into ImageJ run on windows. ImageJ alone can only
import uncompressed videos. The [Quicktime
Opener](http://rsb.info.nih.gov/ij/plugins/movie-opener.html) plugin can
be used to open videos compatible with Quicktime for Windows. However,
many videos cannot be imported by either of these methods, particularly
those using modern codecs like [DivX](http://www.divx.com/) or
[Xvid](http://www.xvid.org/). The following outlines how to import AVIs
compressed with any installed windows codec. It should also work with
other video file formats provided AviSynth (with the help of the
necessary [AviSynth
plugins](http://avisynth.org/mediawiki/Main_Page#Filters.2C_external_plugins.2C_script_functions_and_utilities))
can read the file and codec.

### Instructions

1.  Install all of the following\
    [AviSynth](http://avisynth.org/mediawiki/Main_Page)\
    [Pismo File Mount](http://www.pismotechnic.com/download/)\
    [AVFS](http://www.turtlewar.org/avfs/)
2.  Use notepad to create an avisynth script for the video you want to
    load.\
    Script contents:\<code\>AVISource(\"videofilename.avi\")

ConvertToRGB24()\</code\>Save as videofilename.avs (THAT \'S\' IN \*.AVS
IS IMPORTANT)

1.  Mount the videofilename.avs file\
    Right click in explorer and choose \"Quick mount\"\
    This creates a mounted (fake) folder, inside of which will be a new
    version of the video named videofilename.avi (i.e., the same as the
    original)\
    NOTE: If you decide you want to delete the videofilename.avs file
    and corresponding folder, you must first right click and \'Unmount\'
    the avs file.
2.  In ImageJ, click File\>Import\>AVI, and then just select the newly
    created videofilename.avi inside the mounted folder

You have now imported the AVI. This will work for any AVI file provided
AviSynth can read the file, which will include any AVI file for which
the codecs are installed in Windows.

### Windows Batch Files to Speed Things Up

Just double click the batch files to perform their actions.

1.  To create and mount avs files for all videos in a folder, open
    notepad, save the file as \"multiavscreatemount.bat\", paste the
    following code in, and save again \<code\>

for %%a IN (dir /b \*.avi) do call :avscreate %%a GOTO :DONE

:avscreate if (%1)==(dir) GOTO eof echo AVISource(\"%1\")\> %1.avs echo
ConvertToRGB24()\>\> %1.avs pfm mount %1.avs GOTO :eof

:DONE \</code\>

1.  To unmount and delete avs files for all videos in a folder, open
    notepad, save the file as \"multiunmountdel.bat\", paste the
    following code in, and save again \<code\>

for %%a IN (dir /b \*.avs) do call :unmount %%a GOTO :DONE

:unmount if (%1)==(dir) GOTO eof pfm unmount %1 del %1 GOTO :eof

:DONE \</code\>
