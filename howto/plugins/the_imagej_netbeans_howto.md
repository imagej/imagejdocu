# The ImageJ Netbeans Howto

Originally by gharris@mbl.edu

# NetBeans for ImageJ Development

For development, I use the NetBeans IDE\*, which includes the Swing GUI
Builder. You can also download and install the NetBeans Profiler for
diagnostics. There is also the NetBeans™C/C++ Pack 5.5 which enables
C/C++ coding and compiling, but I have not yet used it for compiling the
QCamJNI.c code for CamAcqJ. (A NetBeans Project for CamAcqJ development
will be published soon\... ) \* I have not used Eclipse enough to say if
it is better or worse than NetBeans. But I can say that when I tried to
try it, I found it hard just to get my project running (I had been using
JBuilder). I found it much easier to get started with NetBeans, and
using the JBuilder project importer, was able to get my code running
very quickly. Overall, I think Eclipse and NetBeans a comparable, but my
personal preference is NetBeans.

## Using NetBeans 5.5 for ImageJ Plugin Development

![graphic](/howto/plugins/topic20notesimage9.jpg)

NetBeans 5.5 IDE I have built a NetBeans Project configured for ImageJ
Plugin Development. ijNB package Download You can download it from
![here](/howto/plugins/ijnb.zip). ijNB.zip (2.7M)

Create a directory for the project (say ijNB) and extract the contents
of the zip (using subfolders). Open the project with NetBeans. To Update
to the Latest ImageJ Source Code (As of January 2, 2007, this package
contains the ImageJ source version 1.38f) When new versions of ImageJ
are released: Download ijXXXx-src.zip Unzip it\... this creates a
folder: source Replace the ImageJ source code In the directory where you
installed ijNB

![](/howto/plugins/topic20notesimage15.jpg)

![](/howto/plugins/topic20notesimage16.jpg)

delete the \\ij folder File & Folders in ijNB

![](/howto/plugins/topic20notesimage17.jpg)

## Compiling Plugins

![](/howto/plugins/topic20notesimage18.jpg)

## Clean Plugins

## Compile Plugins

These options are available because the build file has been setup for
ImageJ\... Ant Build Files

![](/howto/plugins/topic20notesimage20.gif)

build.xml: \<!\-- Ant makefile for ImageJ \--\> \<project
name=\"ImageJ\" default=\"run\"\>

     &lt;target name=&quot;compile&quot; description=&quot;Compile everything.&quot;&gt;
        &lt;!-- First, ensure the build directory exists. --&gt;
        &lt;mkdir dir=&quot;build&quot; /&gt;
        &lt;!-- Build everything; add debug=&quot;on&quot; to debug --&gt;
        &lt;javac srcdir=&quot;.&quot; destdir=&quot;build&quot; optimize=&quot;on&quot; source=&quot;1.3&quot; target=&quot;1.3&quot; debug=&quot;on&quot;&gt;
           &lt;!-- The plugins directory only needs to be
           present at runtime, not at build time. --&gt;
           &lt;exclude name=&quot;plugins/**&quot; /&gt;
        &lt;/javac&gt;
      &lt;/target&gt;

     &lt;target name=&quot;compilePlugins&quot; description=&quot;Compile plugins&quot;&gt;
        &lt;javac srcdir=&quot;plugins&quot; destdir=&quot;plugins&quot; optimize=&quot;on&quot; source=&quot;1.3&quot; target=&quot;1.3&quot; debug=&quot;on&quot;
        classpath=&quot;./jiffy_.jar;./ij.jar;&quot;/&gt;
      &lt;/target&gt;
     
     &lt;target name=&quot;build&quot; depends=&quot;compile&quot; description=&quot;Build ij.jar.&quot;&gt;
        &lt;!-- Copy needed files into the build directory. --&gt;
        &lt;copy file=&quot;IJ_Props.txt&quot; todir=&quot;build&quot; /&gt;
        &lt;copy file=&quot;images/microscope.gif&quot; tofile=&quot;build/microscope.gif&quot; /&gt;
        &lt;copy file=&quot;images/about.jpg&quot; tofile=&quot;build/about.jpg&quot; /&gt;
        &lt;copy file=&quot;plugins/MacAdapter.class&quot; tofile=&quot;build/MacAdapter.class&quot; /&gt;
        &lt;copy todir=&quot;build/macros&quot;&gt;&lt;fileset dir=&quot;macros&quot;/&gt;&lt;/copy&gt;
        &lt;copy todir=&quot;plugins&quot;&gt;
           &lt;fileset dir=&quot;build&quot;&gt;
              &lt;include name=&quot;*.class&quot;/&gt;
           &lt;/fileset&gt;
        &lt;/copy&gt;
        &lt;!-- Build ij.jar. --&gt;
        &lt;jar jarfile=&quot;ij.jar&quot; basedir=&quot;build&quot;
        manifest=&quot;MANIFEST.MF&quot; /&gt;
     &lt;/target&gt;
     &lt;target name=&quot;clean&quot; description=&quot;Delete the build files.&quot;&gt;
        &lt;delete dir=&quot;build&quot; /&gt;
        &lt;delete file=&quot;ij.jar&quot; /&gt;
     &lt;/target&gt;
     &lt;target name=&quot;cleanplugins&quot; description=&quot;Delete plugins class files.&quot;&gt;
        &lt;delete&gt;
            &lt;fileset dir=&quot;plugins&quot;&gt;
              &lt;include name=&quot;*.class&quot;/&gt;
           &lt;/fileset&gt;
        &lt;/delete&gt;
     &lt;/target&gt;


     &lt;target name=&quot;run&quot; depends=&quot;build&quot; description=&quot;Build and run ImageJ.&quot;&gt;
        &lt;java jar=&quot;ij.jar&quot; fork=&quot;yes&quot; /&gt;
     &lt;/target&gt;

     &lt;target name=&quot;zip&quot; depends=&quot;clean&quot; description=&quot;Build zrc.zip.&quot;&gt;
        &lt;zip zipfile=&quot;../src.zip&quot;
        basedir=&quot;..&quot;
        includes=&quot;source/**&quot;
        /&gt;
     &lt;/target&gt;
     &lt;target name=&quot;javadocs&quot; description=&quot;Build the JavaDocs.&quot;&gt;
        &lt;delete dir=&quot;../api&quot; /&gt;
        &lt;mkdir dir=&quot;../api&quot; /&gt;
        &lt;javadoc
           sourcepath=&quot;.&quot;
           packagenames=&quot;ij.*&quot;
           destdir=&quot;../api&quot;
           author=&quot;true&quot;
           version=&quot;true&quot;
           use=&quot;true&quot;
           windowtitle=&quot;ImageJ API&quot;&gt;
        &lt;/javadoc&gt;
     &lt;/target&gt;

\</project\>

## Compiling Individual Plugins

Try to compile one of the .java files... Nb prompts to create
ide-file-targets.xml \<?xml version=\"1.0\" encoding=\"UTF-8\"?\>
\<project basedir=\"..\" name=\"ImageJ-IDE\"\>

     &lt;!-- TODO: edit the following target according to your needs --&gt;
     &lt;!-- (more info: http://www.netbeans.org/kb/41/freeform-config.html#compilesingle) --&gt;
     &lt;target name=&quot;compile-selected-files-in-plugins&quot;&gt;
        &lt;fail unless=&quot;files&quot;&gt;Must set property 'files'&lt;/fail&gt;
        &lt;!-- TODO decide on and define some value for ${build.classes.dir} --&gt;
       
        &lt;javac destdir=&quot;plugins&quot; includes=&quot;${files}&quot; source=&quot;1.5&quot; srcdir=&quot;plugins&quot;&gt;
           &lt;classpath path=&quot;ij.jar;jiffy_jar;&quot;/&gt;
        &lt;/javac&gt;
     &lt;/target&gt;

\</project\> Then you can compile single files\...

![](/howto/plugins/topic20notesimage23.jpg)

MacAdapter MacAdapter.java import com.apple.eawt.\*; depends on
AppleJavaExtensions.jar and MRJAdapter.jar
