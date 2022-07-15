# Shortcuts

**This submenu contains commands for creating keyboard shortcuts and for
installing and removing plugins.**

### Create Shortcut\...

Assigns a keyboard shortcut to an ImageJ menu command and lists the
shortcut in the Shortcuts submenu.

![Create Shortcut
dialog](http://rsb.info.nih.gov/ij/docs/images/hotkey.gif){.align-center
width="360" height="171"}

Select the command from the popup menu and enter the shortcut in the
text field. A shortcut can be a lower or uppercase letter or \"F1\"
through \"F12\". Use **Plugins\>Utilities\>List Shortcuts** to get a
list of shortcuts that are already being used.

### Install Plugin\...

Installs a plugin in a user-specified submenu. Plugins with a
**showAbout()** method are also\
automatically added to the **Help\>About Plugins** submenu.

![Install Plugin
dialog](http://rsb.info.nih.gov/ij/docs/images/install.gif){.align-center
width="297" height="247"}

Use the first popup menu to select the plugin and the second to select
the submenu it is to installed in. The **Command** must be different
from any existing ImageJ command. **Shortcut** (optional) must be a
single letter or \"F1\" through \"F12\". **Argument** (optional) is the
string that will passed to the plugin\'s run method.

### Remove\...

Removes commands added to the **Shortcuts** submenu by **Create
Shortcuts**. Also removes commands added by **Install Plugin** and
removes plugins installed in the **Plugins** menu. The menus are not
updated until ImageJ is restarted.

![Plugins/Remove
dialog](http://rsb.info.nih.gov/ij/docs/images/remove.gif){.align-center
width="325" height="166"}
