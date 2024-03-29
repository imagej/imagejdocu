# Retrieving the optional args when a plugin is called from a macro

**Macros can call plugins with optional arguments using the
run(\"pluginName\", \"optional Args\") macro command. In this how-to,
Wayne Rasband explains how to capture the optional arguments in the
plugin run method.**

Here is an exchange between a newsgroup subscriber and Wayne Rasband
about capturing the optional arguments passed from a macro to a plugin
via the run() macro command. The original post has been edited slightly
to keep it short.

    On Jan 14, 2005, at 9:10 AM, &lt;name removed&gt; wrote:

\<code\>

    How do I pass an argument from a macro to a plugin that implements 'PlugIn'? 

    I would expect that the macro statement

    run(&quot;myPlugin &quot;, &quot;myArgument&quot;);

    would pass &quot;myArgument&quot; as an argument of the 'run' method inside the plugin
    myPlugin '. But that does not happen (the 'run' method receives an
    empty java.lang.String).

    A plugin can retrieve the options string passed to the run() function
    by calling Macro.getOptions().

    -wayne

\</code\>
