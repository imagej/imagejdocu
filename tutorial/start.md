# Tutorials

## General

\<nspages tutorial:general -h1\>

## Plugin

\<nspages tutorial:plugins -h1\>

## Working with ImageJ

\<nspages tutorial:working -h1\>

## ImageJ Plugins Ward: (08/02/2010)

**Author: Vital
([Vital.Gutierrez_Fernandez@onera.fr](patrick@image-archive.org))**

This tutorial consists in a set of instructions to use Eclipse to write
plugins for ImageJ. Furthermore, a set simple plugins is provided to
familiarize the reader to plugins functions going from the opening of
images to modify the data in the results table. The author appreciates
any email with requests of simple codes or suggestions. The readers are
encouraged to become acquaintance with the book of Burger and Burge to
learn about the Image Processing Science. As the author becomes more
confident with the ImageJ Wiki, the format of the tutorials will be
improved with images and videos.

### I) Eclipse installation and configuration:

In the How-Tos section
<http://imagejdocu.tudor.lu/doku.php?id=howto:plugins:the_imagej_eclipse_howto>,
as well as in the tutorial of David Edenberg
<http://rsbweb.nih.gov/ij/docs/eclipse-tutorial/index.html> it has been
described several possible aproaches to use Eclipse and ImageJ together.
Novel users, however, may find the extra capabilities in these
installations not worth the extra complexity involved. The proposed
solution consists in saving the plugins written with eclipse directly in
the plugins folder of ImageJ. Furthermore, by adding the ImageJ jar file
as a library to ImageJ, it is possible to have the coding facilities of
Eclipse, while writting plugins for ImageJ. We shall start by the
installation of eclipse and its configuration. This tutorial assumes you
are using windows and that you already have installed ImageJ

1.  Download Eclipse from: <http://www.eclipse.org/downloads/>. The
    classic version should be good enough. Even if you are using windows
    Vista or 7 in their 64bits versions, there should not be any
    combatibility issues.
2.  Eclipse does not need to \"be installed\" as normal software does,
    rather it must be extracted from the zip file into a suitable folder
    (for example an eclipse folder created in C:\\Program Files)
3.  Click twice on the eclipse.exe file (the one with the eclipse
    symbol)
4.  As this is the first time the software is launched it will ask for a
    location for the workspace. This is the folder where our codes are
    saved. In our case it is important to remember where this folder is
    located, as if there is any problem with our ImageJ installation
    (see later) our work will be also saved there. Appart from this, any
    location is equally valid (mine is C:\\Users\\Vital\\workspace)
5.  At this point Eclipse window is open and there is a default
    workspace (which eventually can be changed at any point). If running
    the .exe did not create a desktop shortcut, it can be useful to
    create it right now.
6.  Before going to Eclipse, we shall move all the subfolders in
    \"C:\\Program Files\\ImageJ\\plugins\" to a temporary folder as we
    want to distinguish between our own Plugins and the \"default
    plugins\" ImageJ provides.

Eclipse is a powerful text editor, which is well known for its
application in Java coding. Nowadays, it can be use to write in C or
fortran. Users should be aware that eclipse is extremely flexible and
each person has a different design. The reader should not get
discouraged by these extreme capacities. Instead, he/she is incouraged
to use the inbuilt tutorials to get familiar with its properties.
Although, this is not required for this tutorial. As we perform more
complex tasks, the reader will become more familiar to this text editor.
To start, we shall only use the Package explorer tag (where we see our
plugins tree) and the central window (where we write our plugins). At
this point we shall configure eclipse to use it in combination with
ImageJ. This will be accomplished by saving our plugins directly in the
ImageJ plugins folder and importing ImageJ into eclipse as a library.

1.  Create a new Java Project, where we shall save our plugins. This can
    be done in several ways (as anything else in eclipse): **File \--\>
    New \--\> Java Project**
2.  This opens the *New Java Project* window. In the *Project layout*
    options choose: *Use project folder as root for sources and class
    files*
3.  Set a *Project Name*. I named mine
    \"ImageJPlugins_ExternalCompilation\" though any name is valid (the
    reason behind the ExternalCompilation notation will become clear
    later when we create an Internal compilation Java Project)
4.  Click on *Next*
5.  Now you are on the *New Java Project* window, at the *Java Settings*
    ing the *Source* tab
6.  To change the *Default output folder:* click on *Browse\...*
7.  In the *Folder Selection* window click on *Create New Folder\...*
8.  Now the *New Folder* window should be active. Click on
    *Advanced\>\>*
9.  Activate the *Link to folder in the file system* option this will
    make available the *Browse\...* icon
10. Click on *Browse\...* and link to the ImageJ plugins folder (mine is
    in \"C:\\Program Files\\ImageJ\\plugins\")
11. Click on *OK* to accept the changes in the *New Folder* window and
    the *Folder Selection* window
12. Click on *Finish*

At this point, we have configured Eclipse to work with ImageJ. Soon we
shall create a plugin to check how this works. But first we shall add
the ImageJ library to eclipse.

1.  Download the ImageJ source file from
    <http://rsbweb.nih.gov/ij/download/src/>. In most cases you want to
    download the latest version.
2.  Return to eclipse and over our Java Project name, in the *Package
    Explorer* tag, righ-click
3.  A menu opens, click on the last option *Properties*
4.  This opens the *Properties for our project* window. On the left,
    click on the *Java Build Path*
5.  In this *Java Build Path* menu (very similar to the *New Java
    Project* window seen before) click on the *Libraries* tag.
6.  Here you can find all the libraries employed in a given project. To
    add the one of ImageJ click on *Add External JARs\...*
7.  Link to the file ij.jar file in the ImageJ folder (mine is located
    in \"C:\\Program Files\\ImageJ\")
8.  Click on *OK*

At the bottom of your Java Project, in the *Package explorer tag* you
might see the ij.jar file and its location as a reference library (left
click on the small arrow of *Referennced libraries*):

1.  Right click on this ij.jar library to open a menu. Left click on the
    last option *Properties*
2.  This opens the window *Properties for the C:\\Program
    Files\\ImageJ\\ij.jar*
3.  Click on *External file\...* in the *Java Source Attachment* menu.
4.  Link to the source file you downloaded previously.

This source file contains the description of the ImageJ functions and
algorithms. From now on as you move your mouse above an ImageJ class in
eclipse it will provide you with a small description. As you will learn
this is extremly usefull while writting plugins.

### II) Starting to write plugins with Eclipse-ImageJ

If the installation of Eclipse-ImageJ has been succesful, any new class
in a package should be visible in the ImageJ plugins menu. Two things
should be remember while creating a new plugin:

1.  A class name is only recognized **if it includes an underscore\" \_
    \"**
2.  To see a new plugin in ImageJ, save the class in eclipse and update
    the menus in ImageJ (in the help tab)(check the tips and trick
    section to do this in fast way)

1\) Creation of a New Pluging

To create a new package and a new class in Eclipse follow the following
steps:

1.  Right click on the Java project which holds your ImageJ library
2.  In the displayed menu click on *New*
3.  In the displayed menu select *Package*
4.  In the *New Java Package* window write a name for the package, for
    example \"testing\"
5.  Right click in the Package you want to create the new class
6.  In the displayed menu click on *New*
7.  In the displayed menu select *Class*
8.  In the *New Java Class* window write any name for the class for
    example \"my_first_Plugin\". If you put another name just remember
    to include an underscore \" \_ \"

If you need to create a new class, but not a package, you just need to
do steps 5 to 8. To see if the package and the plugin were rightly
exported:

-   Save the class. For every modification to take effect on your
    plugin, the class must be saved. Just click on the symbol with the
    floopy disk.
-   If ImageJ is open click *Update Menus* in the *Help* menu. Otherwise
    start ImageJ
-   Left click on the Plugins menu. Below the option *Compile and
    Run\...* you should see your package name (It may be \"testing\")
-   Left click on the menu \"testing\", you should see your plugin name
    (It may be \"my_first_Plugin\").

2\) Importing a Plugin

In other cases, however, you may need to download a plugin from the
ImageJ website and modify it. Moreover, The examples provided below can
be modified and combined to produce more complex tasks. The first step
in this coding process, consists in importing the java files into your
Eclipse-ImageJ compilation.

1.  Download a plugin. For example the java file from this tutorial:
    *i_create_duplicates_image.java*
2.  We may want to create a new Package for these plugins, repeat the
    previous 1-4 steps with a different name. For example \"downloads\"
3.  Right click on your \"downloads\" package
4.  In the displayed menu, left click on *Import\...*
5.  The *Import window* opens, you need to open the General folder icon
6.  Select as import source the *File System* option
7.  Left click on *Next \>*
8.  In this new *Import* window left click on the superior *Browse\...*
    icon
9.  Select the folder where you downloaded the java files are located
10. On the right whiteboard select the files you want to import into the
    package
11. Left Click on *Finish*

You may observe on the right page on the package explorer that the
*i_create_duplicates_image.java* has been included in the \"downloads\"
package. However, you may also notice a small red square with a white
cross in your class, package and java project. This illustrates how
Eclipse shows you that there is an error in the code.

The reason for this error in the code is fairly common: you gave a name
to your package that does not agree with the one of the class creator.
To solve this problem follow these steps, using the quick fix solutions
of eclipse:

1.  If the main eclipse window is not already displaying the class code,
    double click on its name (*i_create_duplicates_image.java*) in the
    *Package Explorer*, to display it.
2.  At the top of the window you will see the package declaration:
    *package imagej_plugins_ward;*. The first word should be in purple
    (this means \"fix\" parts of the code, the second is black (this
    means user-chosen code)
3.  You will see at the left part of the window that there are two
    lightbulbs with the cross symbols. These are the lines that are
    suspected to have code errors. In most cases the earlier errors
    should be solved first.
4.  Right click on the first one, at the package declaration: *package
    imagej_plugins_ward;*
5.  Left click on *Quick Fix*
6.  A small menu opens which displays the possible solutions: 1) Create
    a new package named \"imagej_plugins_ward\" 2) Change the name of
    the declaration by \"downloads\" (or the name of the package to
    which you imported the class) 3) Move to another workspace.
7.  The simpler option for us is the second: Change the declaration of
    the package

Once ImageJ menus are updated or ImageJ reopened, you will see the new
plugins in your *Plugins* menu in the \"downloads\" submenu.

3\) Coping a plugin

Assuming you have two packages, you can simply copy a plugin by several
ways including:

1.  Right click on desired class in the source package. For example
    \"my_first_Plugin\" in the \"testing\" package.
2.  In the displayed menu click on *Copy*
3.  Right click target package. For example the \"downloads\" package.
4.  In the displayed menu click on *Paste*

Unlike in the case of importing a class, Eclipse changes automatically
the package declaration to the one of the current package.

### III) Basic Plugins

The following codes consist in simple examples of ImageJ plugins. By
their own, they have little use by any user. However, these functions
are commonly used while writting any plugin. The aim of this work is to
allow the reader to become familiar with the Java-ImageJ programing. For
any doubt or problem please do not doubt to contanct
**([Vital.Gutierrez_Fernandez@onera.fr](patrick@image-archive.org))**.

#### I Duplication of an opened image

![](/tutorial/i_create_duplicates_imagev1.java)

#### II Modification of an opened image

![](/tutorial/ii_modify_active_imagev2.java)

#### III Modification of the image inside a rectangular ROI (Region Of Interest)

![](/tutorial/iii_modify_roi_imagev1.java)

#### IV Modification of an Image by pixel operations

![](/tutorial/iv_modify_pixeloperation_image.java)

#### V Modification of an image inside a non rectangular ROI (Region Of Interest)

![](/tutorial/v_modify_anyroi_imagev1.java)

#### VI Loading, treating and Saving and Image

![](/tutorial/vi_opensave_imagev1.java)

#### VII Batch Process: loading, treating and saving images

![](/tutorial/vii_batchopesave_imagev1.java)

#### VIII Batch Process: loading, treating and saving images

![](/tutorial/viii_modify_stackv1.java)

#### X Create Image From Single Image

![](/tutorial/x_createstack_imagev1.java)

#### XI Batch Process: loading Image-Rois and treatment

![](/tutorial/xi_loadrois_stackv1.java)

#### XII Particle Analyzer

![](/tutorial/xii_particleanalyzer_imagev1.java)
