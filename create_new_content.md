# Create new content

The pages are organised using namespaces. Every type document has his
own namespace and therefore, grouping is much more easy.

You can use the following formula to create new content. Just specify
title, type of document and category. This will create a new document in
the corresponding namespace with a default template text.

\<html\> \<script type=\"text/javascript\"\>

function submitFormular() {

      document.Formular.id.value = 
           document.Formular.namespace.value + &quot;:&quot; + 
           document.Formular.category.value + &quot;:&quot; + 
           document.Formular.id.value;

      if (document.Formular.namespace.value == &quot;plugin&quot;) {
          document.Formular.id.value += &quot;:start&quot;;
      } 

      document.Formular.newpagetemplate.value = 
           document.Formular.newpagetemplate.value + &quot;:&quot; + 
           document.Formular.namespace.value;
      document.Formular.namespace.name = null;
      
      return true;
    }

function fillCategories() {

      namespace = document.Formular.namespace.value;

      // empty existing items
      for (i = document.Formular.category.options.length; i &gt;= 0; i--) {
          document.Formular.category.options[i] = null; 
      }
      itemArray = null;

      // now fill, depending on namespace selected:
      if(namespace == &quot;faq&quot;){
          itemArray = new Array(
          new Array(&quot;General&quot;, &quot;general&quot;),
          new Array(&quot;Technical&quot;, &quot;technical&quot;),
          new Array(&quot;Plugins&quot;, &quot;plugins&quot;),
          new Array(&quot;Macros&quot;, &quot;macros&quot;),
          new Array(&quot;Lookup Tables&quot;, &quot;lookup&quot;));
       }
       if(namespace == &quot;lib&quot;){
          itemArray = new Array(
          new Array(&quot;Utility&quot;, &quot;util&quot;),
          new Array(&quot;Processing&quot;, &quot;processing&quot;));

       }
       if(namespace == &quot;gui&quot;){
          itemArray = new Array(
          new Array(&quot;File&quot;, &quot;file&quot;),
          new Array(&quot;Edit&quot;, &quot;edit&quot;),
          new Array(&quot;Image&quot;, &quot;image&quot;),
          new Array(&quot;Process&quot;, &quot;process&quot;),
          new Array(&quot;Analyze&quot;, &quot;analyze&quot;),
          new Array(&quot;Plugins&quot;, &quot;plugins&quot;),
          new Array(&quot;Window&quot;, &quot;window&quot;),
          new Array(&quot;Help&quot;, &quot;help&quot;));
       }
       if(namespace == &quot;plugin&quot;){
          itemArray = new Array(
          new Array(&quot;Acquisition&quot;, &quot;acquisition&quot;),
          new Array(&quot;Aligning&quot;, &quot;aligning&quot;),
          new Array(&quot;Analysis&quot;, &quot;analysis&quot;),
          new Array(&quot;Collections&quot;, &quot;collections&quot;),
          new Array(&quot;Color&quot;, &quot;color&quot;),
          new Array(&quot;Filter&quot;, &quot;filter&quot;),
          new Array(&quot;Graphics&quot;, &quot;graphics&quot;),
          new Array(&quot;Input/Output&quot;, &quot;inputoutput&quot;),
          new Array(&quot;Morphology&quot;, &quot;morphology&quot;),
          new Array(&quot;Programming Examples&quot;, &quot;examples&quot;),
          new Array(&quot;Segmentation&quot;, &quot;segmentation&quot;),
          new Array(&quot;Simulation&quot;, &quot;simulation&quot;),
          new Array(&quot;Stacks&quot;, &quot;stacks&quot;),
                  new Array(&quot;3D Modelling&quot;, &quot;3d&quot;),
          new Array(&quot;Utilities&quot;, &quot;utilities&quot;));
       }
       if(namespace == &quot;howto&quot;){
          itemArray = new Array(
          new Array(&quot;General&quot;, &quot;general&quot;),
          new Array(&quot;Plugins&quot;, &quot;plugins&quot;),
          new Array(&quot;Java&quot;, &quot;java&quot;),
          new Array(&quot;Working with ImageJ&quot;, &quot;working&quot;));
       }
       if(namespace == &quot;tutorial&quot;){
          itemArray = new Array(
          new Array(&quot;General&quot;, &quot;general&quot;),
          new Array(&quot;Plugins&quot;, &quot;plugins&quot;),
          new Array(&quot;Java&quot;, &quot;java&quot;),
          new Array(&quot;Working with ImageJ&quot;, &quot;working&quot;));
       }
      if(namespace == &quot;wishlist&quot;){
          itemArray = new Array(
          new Array(&quot;Procedure&quot;, &quot;procedure&quot;),
          new Array(&quot;GUI&quot;, &quot;gui&quot;),
          new Array(&quot;Functionality&quot;, &quot;functionality&quot;),
          new Array(&quot;Completed&quot;, &quot;completed&quot;));
       }
       if(namespace == &quot;problem&quot;){
          itemArray = new Array(
          new Array(&quot;All Operation Systems&quot;, &quot;allos&quot;),
          new Array(&quot;Windows&quot;, &quot;windows&quot;),
          new Array(&quot;MAC OS X&quot;, &quot;osx&quot;),
          new Array(&quot;Linux&quot;, &quot;linux&quot;),
          new Array(&quot;Zaurus&quot;, &quot;zaurus&quot;));
       }
      if(namespace == &quot;video&quot;){
          itemArray = new Array(
          new Array(&quot;Acquisition&quot;, &quot;acquisition&quot;),
          new Array(&quot;Aligning&quot;, &quot;aligning&quot;),
          new Array(&quot;Analysis&quot;, &quot;analysis&quot;),
                  new Array(&quot;Beginner Help&quot;, &quot;beginner help&quot;),
          new Array(&quot;Collections&quot;, &quot;collections&quot;),
          new Array(&quot;Color&quot;, &quot;color&quot;),
          new Array(&quot;Filters&quot;, &quot;filters&quot;),
          new Array(&quot;Graphics&quot;, &quot;graphics&quot;),
          new Array(&quot;Input/Output&quot;, &quot;inputoutput&quot;),
          new Array(&quot;Morphology&quot;, &quot;morphology&quot;),
          new Array(&quot;Programming Examples&quot;, &quot;examples&quot;),
          new Array(&quot;Segmentation&quot;, &quot;segmentation&quot;),
          new Array(&quot;Segmentation&quot;, &quot;simulation&quot;),
          new Array(&quot;Stacks&quot;, &quot;stacks&quot;),
                  new Array(&quot;3D Modelling&quot;, &quot;3d&quot;),
          new Array(&quot;Utilities&quot;, &quot;utilities&quot;));
       }
       if(namespace == &quot;link&quot;){
          itemArray = new Array(
          new Array(&quot;ImageJ&quot;, &quot;imagej&quot;),
          new Array(&quot;Image analysis&quot;, &quot;analysis&quot;),
          new Array(&quot;Spectral imaging&quot;, &quot;spectral&quot;),
          new Array(&quot;Test Images&quot;, &quot;test&quot;),
          new Array(&quot;Java&quot;, &quot;java&quot;));
       }

       j = 0;
       for (i = 0; i &lt; itemArray.length; i++) {
      document.Formular.category.options[j] = new Option(itemArray[i][0]);
      if (itemArray[i][1] != null) {
        document.Formular.category.options[j].value = itemArray[i][1]; 
      }
      j++;
       }
       return true;
     }

\</script\>

\<form name=\"Formular\" action=\"./doku.php\"
onsubmit=\"submitFormular()\" method=\"get\"\>

\<p\>\<b\>Title:\</b\>\<br\> \<input name=\"id\" type=\"text\"
size=\"80\" maxlength=\"120\"\>\</p\>

\<p\>\<b\>Type:\</b\>\<br\>

      &lt;select name=&quot;namespace&quot; size=&quot;1&quot; onChange=&quot;fillCategories()&quot; &gt;
        &lt;option value=&quot;none&quot;&gt;Please select&lt;/option&gt;
        &lt;option value=&quot;faq&quot;&gt;FAQ&lt;/option&gt;
        &lt;option value=&quot;gui&quot;&gt;GUI Commands&lt;/option&gt;
        &lt;option value=&quot;plugin&quot;&gt;Plugin&lt;/option&gt;
        &lt;option value=&quot;lib&quot;&gt;Library&lt;/option&gt;
        &lt;option value=&quot;howto&quot;&gt;HowTo&lt;/option&gt;
        &lt;option value=&quot;tutorial&quot;&gt;Tutorial&lt;/option&gt;    
        &lt;option value=&quot;wishlist&quot;&gt;Wishlist&lt;/option&gt;
        &lt;option value=&quot;problem&quot;&gt;Problem&lt;/option&gt;
        &lt;option value=&quot;video&quot;&gt;Video Tutorial&lt;/option&gt;
        &lt;option value=&quot;link&quot;&gt;Link&lt;/option&gt;
      &lt;/select&gt;

\</p\> \<p\>\<b\>Category:\</b\>\<br\>

      &lt;select name=&quot;category&quot; size=&quot;1&quot;&gt;
      &lt;/select&gt;

\</p\> \<input type=\"hidden\" name=\"do\" value=\"edit\"\> \<input
type=\"hidden\" name=\"newpagetemplate\" value=\"templates\"\>

\<input type=\"submit\" value=\" Submit \"\> \<input type=\"reset\"
value=\" Cancel \"\>

    &lt;/p&gt;

\</form\> \</html\>\
\

## Modification of pages

All content can be edited by any registered user by default. If you want
to protect some data, for example of your own plugin, you can restrict
these modification by sending a email to **Andreas dot Jahnen at list
dot lu**.
