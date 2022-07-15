# How to install a plugin?

## I only have the the Java source file

Copy the \*.java file to the ImageJ/Plugins folder or subfolder.

Go to the menu entry **Plugins\>Compile and Run\...** and select the
Java file you copied.

If compiled successfully, go to **Help\>Refresh Menus** or (better)
restart ImageJ.

If the plugin has an underscore \"\_\" in the name, it will appear in
the Plugins menu (or submenu).

## I have the \*.class file

Copy the \*.class file to the ImageJ/Plugins folder or subfolder.

Go to **Help\>Refresh Menus** or (better) restart ImageJ.

If the plugin has an underscore \"\_\" in the name, it will appear in
the Plugins menu (or submenu).

## I have the \*.jar file

Copy the \*.jar file to the ImageJ/Plugins folder

Go to **Help\>Refresh Menus** or (better) restart ImageJ.

Jar files contain a plugin.config file that can specify where in the
menu the entry will appear.

Jar files are zip compressed files, so you can investigate this easily.
