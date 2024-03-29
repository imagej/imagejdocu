# Setting up ij-dcraw plugin on MacOsX

This How-To explains how to setup Jarek Sacha\'s ij-dcraw plugin on
MacOsX.

\* Download latest ij-dcraw plugin from:
<http://sourceforge.net/projects/ij-plugins/files/ij-dcraw/v.1.3.0/> The
ij-dcraw_native-bin-linux_1.3.0.r1302.tar.gz file will unzip to:

/ij-dcraw_native-bin-linux_1.3.0.r1302

      |-ij-dcraw_.jar
      |-dcraw
      |---dcraw
      

\* Copy ij-dcraw\_.jar and the dcraw folder into your ImageJ plugins
folder, so that you end up with:

/plugins

      |-ij-dcraw_.jar
      |-dcraw
      |---dcraw

\* Download latest dcraw utility compiled for MacOSX from:
<http://www.insflug.org/raw/Downloads/> dcraw-MacOSX.tgz unzips to:

/usr

      |-share
      |-bin
      |---dcrawx86
      |---dcrawU
      |---dcrawG5
      |---dcrawG4
      |---dcraw.1
      |---dcraw

\* Now replace the content of your ImageJ/plugins/dcraw/ folder by the
content of the bin folder, so that you end up with:

/plugins

      |-ij-dcraw_.jar
      |-dcraw
      |---dcrawx86
      |---dcrawU
      |---dcrawG5
      |---dcrawG4
      |---dcraw.1
      |---dcraw

\* Restart ImageJ. Open a raw camera file using:
\[ImageJ/plugins/Input-Output/DCRaw Reader\...\] command.
