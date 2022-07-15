# Estimate Memory Requirements

## Author

Jonathan Jackson (jjackson a.t familyjackson dot net)

## Description

This is a short script to estimate the java heap size to use based on
the size of images on disk. It prints a warning and exits if there is
not enough RAM available on the machine.

## Supported Systems

estimate_mem has been tested on Linux but should work on MacOS X /
Solaris / Cygwin

## Installation

Save the \'estimate_mem\' script (to ImageJ/bin) and make the file
executable etc. \<code bash\> #!/bin/bash

authors=\'Jon Jackson\' email=\'j.jackson \|at\| ucl.ac.uk\'
version=\'2008-12-04\'

function usage {

      echo &quot;Usage: $(basename $0) [options] imagefile&quot;
      echo &quot; estimates memory required to process imagefile with imagej library&quot;
      echo &quot; options: &quot;
      echo &quot;    -b &lt;value&gt;    base memory value (integer)&quot; 
      echo &quot;    -m &lt;value&gt;    multiply by value (integer)&quot;  
      echo &quot;&quot;
      echo &quot;Version: $version. Author(s): $authors (contact: $email)&quot;
      echo &quot;&quot;

}

declare -i im_file_size declare -i mem=512 declare -i min_mem=32 declare
-i max_mem declare -i max_32bit=1800 declare -i max_64bit=1000000 \#
This figure can be increased up to upper limit for 64bit OS shopt -s
extglob

declare -i multiply=1 declare -i basemem=64

while getopts b:Dm: options do

      case $options in
          b) basemem=${OPTARG}
              if (( &quot;$basemem&quot; &lt;= 0 )) ; then
                  echo &quot;$(basename $0): invalid value for -m: $OPTARG&quot; 1&gt;&amp;2
                  echo &quot;Positive nteger value required&quot; 1&gt;&amp;2
                  usage; exit 1 
              fi       
              ;;
          D) debug='true'
              ;;
          m) multiply=${OPTARG}
              if (( &quot;$multiply&quot; &lt;= 0 )) ; then
                  echo &quot;$(basename $0): invalid value for -m: $OPTARG&quot; 1&gt;&amp;2
                  echo &quot;Positive nteger value required&quot; 1&gt;&amp;2
                  usage; exit 1 
              fi
              ;;        
          \?) usage
              exit 1 ;;
      esac

done

declare -i i=1 while (( i \< \$OPTIND )) ; do

      shift
      i=i+1

done

if (( \"\${#\*}\" == 0 )) ; then

      usage
      exit 1

fi

im_file=\"\$1\"

\# Estimate memory required based on file size

if [-f &quot;\$im_file&quot;](-f &quot;$im_file&quot;) ; then

      if [[ &quot;$im_file&quot; == *zip ]] ; then
          im_file_size=$(unzip -l &quot;$im_file&quot; | awk '{mem=$1} END{print mem}')
      elif [[ &quot;$im_file&quot; == *@(bz2|gz|tgz) ]] ; then
          echo &quot;Warning: memory requirements are not yet estimated correctly for compressed files ($im_file)&quot; 
      else
          im_file_size=$(stat -L -c &quot;%s&quot; $(echo $im_file | sed 's/.hdr$/.img/') )
      fi
      if (( $im_file_size == 0 )) ; then
          echo &quot;Unable to estimate file size for $im_file&quot;
      else
          # estimate memory required for 'multiply' x file of this size (INTEGER OPERATIONS ONLY)
          mem=&quot;$im_file_size/1000000*${multiply}+${basemem}&quot;
      fi

fi

if [\`uname\` == \'SunOS\'](`uname` == 'SunOS') ; then

      max_mem=`vmstat | awk 'BEGIN{maxMem='$max_64bit'} NR == 3 {fmem=int($5 / 1024); if (fmem &lt; maxMem) {print fmem} else {print maxMem}}'`

elif [\`uname\` == \'Linux\'](`uname` == 'Linux') ; then

      if [[ `uname -m` == 'x86_64' ]] ; then
          max_mem=`free | awk -v maxMem=$max_64bit 'NR == 2 {fmem=int($2 / 1024); if (fmem &lt; maxMem) {print fmem} else {print maxMem}}'`
      else
          max_mem=`free | awk -v maxMem=$max_32bit 'NR == 2 {fmem=int($2 / 1024); if (fmem &lt; maxMem) {print fmem} else {print maxMem}}'`
      fi

fi if (( \$mem \> \$max_mem )) ; then

      echo &quot;Sorry, there is not enough RAM memory available on this machine&quot;
      echo &quot;Required: $mem MB; available: $max_mem MB&quot;
      echo &quot;`basename $0` is EXITING&quot;
      exit 1

fi if (( \$mem \< \$min_mem )) ; then mem=\$min_mem ; fi

echo \$mem \</code\>
