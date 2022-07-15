# Compile and Run\...

**Compiles and runs a plugin. Requires that ImageJ be running on a Java
Virtual Machine that includes the javac compiler.**

Runs a plugin if the name of the selected file ends in \"`.class`\",
otherwise tries to compile a java file. Hold down the **Alt** key while
running this command to have the javac compiler generate the debugging
infomation required for monitoring variables using debuggers such as
NetBeans and Eclipse. You can also use ***Edit \> Options \> Compiler***
to create `.class` files for debugging. There, you can also select the
Java version of the `.class` file.

Use an underscore in the filename (and the class name) if you want that
ImageJ loads your plugin automatically on startup (or when selecting
***Help \> Update Menus***). The underscore character will be converted
into an space in the Plugins menu, e.g. `Example_Plot.class` will appear
as menu item \"Example Plot\".

If your plugin accesses a package contained in a jar file located in the
plugins folder, this jar file must **not** contain an underscore.

## Javac setup

**Javac** is included with the Windows and Linux versions of ImageJ that
come bundled with a Java runtime. It is also included with Mac OS X
Java.

Users of Sun\'s Java 2 SDK (Software Development Kit) for Windows, Linux
and Solaris must add `tools.jar` to the command line that runs ImageJ.

Here is an example Windows command line for running ImageJ using the
Java 2 SDK (aka JDK):

    java -mx100m -cp ij.jar;C:\jdk1.4\lib\tools.jar ij.ImageJ

It assumes the Java 2 SDK is installed in C:\\jdk1.4.

On a Unix system, the command would look something like this:

    java -mx100m -cp ij.jar:\usr\local\jdk1.4\lib\tools.jar ij.ImageJ

The -mx100 options specifies that ImageJ can use up to 100MB of RAM. To
avoid virtual memory thrashing, this value should not be set to more
than 2/3 of available RAM (e.g. -mx170m on a 256MB machine).

On Windows, you can create a double-clickable shortcut that uses Java 2
to run ImageJ:

1.  Right-click on the desktop and select New-\>Shortcut from the menu
2.  Enter:\
    javaw -mx100m -cp ij.jar;C:\\jdk1.4\\lib\\tools.jar ij.ImageJ as the
    \"Command line\"; click \"Next\"
3.  Enter a name for the shortcut (e.g. \"ImageJ\"); click \"Finish\"
4.  Right-click of the newly created shortcut and select Properties from
    the menu
5.  Click on the Shortcut tab
6.  Enter the path to the ImageJ folder (normally C:\\ImageJ) in \"Start
    in\"; click \"OK\"

\"**javaw**\" is a variation of the java command that runs Java
applications without a DOS windows.
