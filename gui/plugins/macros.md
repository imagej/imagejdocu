# Macros

**This submenu contains commands for installing, running and recording
macros, as well as any macro commands added by Plugins/Macros/Install.
Macros contained in a file named \"StartupMacros.txt\", in the macros
folder, are automatically added to this submenu when ImageJ starts up.**

### Install

Adds one or more macros contained in a file to the bottom of this
submenu. To install a set of macros, and at the same time view their
source code, open the macro file with **File\>Open** and use the
editor\'s **Macros\>Install Macros** command.

Macros in the file ImageJ/macros/StartupMacros.txt are automatically
installed when ImageJ starts up.

### Run\...

Loads and runs a macro without opening it in the ImageJ editor. To run a
macro, and at the same time view its source code, open it with
**File\>Open** and use the editor\'s **File\>Run Macro** command.

### StartupMacros\...

This command opens the StartupMacros.txt file in a text window and runs
the AutoRun() macro contained in it.

### Record\...

Opens the ImageJ command recorder. To create a macro, open the recorder,
use one or more ImageJ commands, then click \"Create\". When the
recorder is open, each menu command you use generates a macro run()
function call. The run() function has one or two string arguments. The
first is the command name. The optional second argument contains dialog
box parameters.
