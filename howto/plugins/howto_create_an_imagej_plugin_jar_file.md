# HowTo create an ImageJ plugin jar file: Pitfalls and Tips

**Brief documentation on how to create an ImageJ jar file plugin.**

I recently created my first ImageJ plugin, and wanted to make it a jar
file. Seemingly easy, I did not find any documentation on the exact
process, which cost me nearly 2 hours and a trip to the ImageJ source
code! In an effort to make life easier for you, gentle reader, I\'ve
documented some of the pitfalls.

1.  Plugins can go in the default package or a class with a package
    declaration.
2.  Be sure to include an \'\_\' in the filename of the jar file! This
    is apparently undocumented but very important.
3.  Create a \'plugins.config\' file as part of your jar. This tells
    ImageJ where to locate your plugin in it\'s menus.
4.  The whitespace separating each element in a line must be a space
    (\\s) character and not a tab (\\t).

The plugins.config has a format like this:

\<code\>

    # This is a comment
    # Each entry is menuname, &quot;Command text&quot;, classname

    # This puts a command named &quot;Foo&quot; in the Plugins menu associated
    # with the &quot;FancyPluginClass&quot; class in the default package.
    Plugins, &quot;Foo&quot;, FancyPluginClass

    #This puts a command named &quot;Foo&quot; in the Plugins&gt;Moo menu associated with the &quot;FooClass&quot; class.
    Plugins&gt;Moo, &quot;Foo&quot;, FooClass

    #This puts a command named &quot;Left&quot; in the Plugins&gt;Feet menu associated with the org.foo.LeftFootClass class
    Plugins&gt;Feet, &quot;Left&quot;, org.foo.LeftFootClass

    #This puts a separator between menu items
    Plugins&gt;Feet, &quot;-&quot;

    #This puts a command named &quot;Right&quot; in the Plugins&gt;Feet menu associated with the org.foo.RightFootClass class
    Plugins&gt;Feet, &quot;Right&quot;, org.foo.RightFootClass

\</code\>

#### plugins.config file pitfall

For each line, there should be no space after the class name. For
example: \<code\> File\>New, \"Blob1\", my.test.Test1 File\>New,
\"Blob2\", my.test.Test2 \</code\> These two lines might look same, but
the first one works and the second not. This is because there is a space
in the second line after my.test.Test2. It compiles Ok, but in runtime
there will be an error message:

\> Plugin of class not found: \"my.test.Test2\" \>
(java.lang.ClassNotFoundException: my.test.Test2)

Which will then be a bug that is very difficult to debug. **Check the
trailing space first!**

### Comments:

-   **JAR Plugin demo documentation** There is information on how to
    package plugins in JAR files in the JAR Plugin demo at:
    -   <http://rsbweb.nih.gov/ij/plugins/jar-demo.html>
-   **Jar File naming** The jar file itself must have an underscore in
    it, otherwise it won\'t be registered!
-   **Plugin Architecture**
    -   detailed explanation on the architecture of plugin in [Fiji
        site](http://fiji.sc/wiki/index.php/Description_of_ImageJ%27s_plugin_architecture).

I hope this howto saves you all some time!
