# FAQ: How do I make a macro appear in the Plugins Menu?

**Apart from installing a macro, how can I make a macro file to appear
listed in the Plugins menu?**

Include an underscore \"\_\" in the macro name and save it in the
Plugins folder (or one folder below). After re-starting ImageJ, the
macro name will appear in the Plugins menu, with the underscore
character converted into a space.

For example, **MyMacro.txt** will not appear in the menu, but\*\*
My_Macro.txt\*\* and **Macro\_.txt** will be listed as \"**My Macro**\"
and \"**Macro**\" respectively.
