# Customizable right-click menu for toolsets

**The customizability of the GUI is getting much better recently,
especially with the new alternate macro tool sets feature added in
1.37t.**

In 1.37r, the three line selection tools were consolidated into a single
button, using right-click to choose between the three options. Likewise,
elliptical and brush selections are combined in one button.

It would be excellent if the customizable macro tool sets could be even
further customized with this right-click functionality. Also,
double-click functionality would be nice as well.

## Double-click functionality

Posted by G. Landini at 2006-12-20 12:48

As far as I know, the double-click functionality is already there.

If you have a macro, for example: \<code\> macro \"Flood Fill Tool {
\[\...\] } \</code\>

the double click should be accessible with another macro called:

\<code\> macro \"Flood Fill Tool Options\...\" { \[\...\] } \</code\>

### Action tool options

Since version 1.41d, one can add a macro that is called when
right-clicking an Action Tool: \<code\> macro \'Capture Action Tool -
C000F14faF24faP4461b1d40Cfffo5577\' {

      //on click, this macro is run
      [...]

}

macro \'Capture Action Tool Options\' {

      //on right-click, the corresponding 'Options' macro is run
      Dialog.create(&quot;Capture Options&quot;); //e.g., put a dialog here
      [...]

} \</code\> \-\-- Michael Schmid 2008/09/25
