# How to set up Netbeans to work with Imagej and MATLAB together

This step-by-step tutorial will show you how to set up a Netbeans
Project to develop ImageJ plugins, which are using MATLAB code (wrapped
with MATLAB Builder JE).\
In this tutorial I\'m not going to describe how to write a plugin, but
if you succeed and develope one, then in the end you will have a plugin,
that will be able to use ImageJ functions, other ImageJ plugins,
external jar files, and jar files which call MATLAB functions without
having MATLAB installed. You will only need MCR (described below), which
is completely free.

### 0. Step - Install

Before you start you have to install the following programs (I used
these, don\'t know if it works with other versions):\
- MATLAB R2010a (!)\
- MCR (MATLAB Compiler Runtime) v7.13 (!)\
- Netbeans 6.9.1 (!)\
- ImageJ (any version, but tested on 1.44e)\

Make sure your System Environment Variables are set correctly:

PATH: C:\\Program Files\\Java\\jdk1.6.0_21\\bin; C:\\Program
Files\\MATLAB\\R2010a\\runtime\\win32; C:\\Program
Files\\MATLAB\\R2010a\\bin; C:\\Program Files\\MATLAB\\MATLAB Compiler
Runtime\\v713\\runtime\\win32;

JAVA_HOME: c:\\Program Files\\Java\\jdk1.6.0_21;

More help:\
<http://www.java.com/en/download/help/path.xml>\
<http://download.oracle.com/javase/tutorial/essential/environment/paths.html>

### 1. Step - Create project

Follow this guide:
http://www.mbl.edu/research/labs/adlc/CamAcqJ/NetBeansforIJDevelopment.html\
This will show you how to create Netbeans project, how to update to the
latest ImageJ source code, and how your build.xml should look like. You
will have to compile your plugins every time you make some changes, but
this is the best method I found to separate plugin compiling and source
code compiling.

My own project I used: ![](/howto/plugins/imagej_ijnb.zip)

After you opened the project in Netbeans make sure you set it as the
main project: Right click on project name and select \'Set as Main
Project\'

### 2. Step - Set properties

As ijNB is a \'FreeForm\' project, you have to set your Java Sources and
Java Sources Classpath manually:

##### Java Sources

Right click on project name \--\> Properties \--\> Java Sources tab

![javas.jpg](/howto/plugins/javas.jpg){width="428" height="320"}

##### Java Sources Classpath

Right click on project name \--\> Properties \--\> Java Sources
Classpath tab

![](/howto/plugins/javasc.jpg)

Both for \'plugins\' and \'src\' set the same Classpath entries:\
- ij.jar (ImageJ main jar file)\
- MATLAB MCR v713\\toolbox\\javabuilder\\jar\\javabuilder.jar (this
contains the MATLAB type and function definitions, which you have to use
to communicate with MATLAB MCR through Java code)\
- plugins/\... (any jar files, which have been created with MATLAB
Builder JA). It\'s important to copy those jar files to the \'plugins\'
directory if you want to use them from your ImageJ plugin\

##### Classpath

Netbeans Tools / Options menu\
Select Miscellaneous tab / Ant tab, and set Classpath variables:

![classmisc.jpg](/howto/plugins/classmisc.jpg){width="383" height="325"}

##### Javabuilder.jar

\<html\> Although we set the classpath to the \<span
style=\"color:red;font-size:120%;\"\>javabuilder.jar\</span\>, if you
want to use the MATLAB types you have to copy that file to the plugins
folder. \</html\>

### 3. Step - Develop plugin

Now you have set the environment to successfully develop a ImageJ plugin
which uses MATLAB user created .jar files.\
Make sure you don\'t use namespaces in plugins, because otherwise you
can\'t reach those MATLAB wrapper classes (or it will be difficult).\

##### MATLAB types and functions

To call your wrapped MATLAB function you have to instantiate the wrapper
class. In Netbeans you can browse your jar files, and see their
structure and all of the wrapped classes. With Netbeans works
\'intellisense\', so you can browse your MATLAB functions after typing
the class instance and putting a dot.

If your MATLAB function has input and output arguments (probably has),
than you have to use special MATLAB types. More information on these:
<http://www.mathworks.com/help/toolbox/javabuilder/ug/bqp6ki8-1.html>

##### ImageJ plugin

I highly recommend to write your plugin separated from those code
segments where you use MATLAB types and reach MATLAB functions (make
helper classes):\
- MyPlugin\_.java (main plugin class)\
- MatlabDriver.java (reach matlab functions)\
These class files should be in the plugins folder too.

### Known issues

Error: After you build your project, start Imagej and start your plugin
you may notice crashes while calling MATLAB functions (in your plugin).\
Solution: Clean your java install completly (java jre ans jdk), and
install the latest jdk. If you have more jdk or jre versions installed
they may interfere.
