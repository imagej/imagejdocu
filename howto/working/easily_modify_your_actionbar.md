# Easily modify your ActionBar

This macro for ImageJ can be very useful in conjunction with the plug-in
[ActionBar](/plugin/utilities/action_bar/start). It offers operations to
edit, extend and modify an ActionBar of your choice.

## What it does

![actionbar_modifier -
screenshot](/howto/working/actionbar_modifier.png){.align-right}

-   **run**: simply starts the chosen ActionBar
-   **open for edit**: opens the txt-file of your bar inside the editor
-   **backup (create)**: creates a backup name like your ActionBar +
    \*.backup
-   **backup (restore)**: restores a backup if there is one available
    (if the ActionBar to be restored is currently open, it won\'t work)
-   **add row (after)**: creates a new row of buttons (tip: check
    \"create empty.png\" to create a placeholder image)
-   **add column (after)**: creates a new column of buttons (refer to
    the above)
-   **add column (before)**: creates a new column of buttons (refer to
    the above)
-   **switch button positions**: switches positions of two buttons and
    their underlying functionality
-   **trim rows**: trims the rows of buttons to a desired layout
-   **delete rows**: deletes a row
-   **delete column**: deletes a column
-   **delete bar/content**: if possible and not in use, the defined bar
    will be deleted, wiped and erased till it\'s all gone (bar +
    images + their folder)

## Requirements

The macro should work with all ActionBars that follow a given
convention. That means every button consists of six lines..\
\<code\> \<button\> 1 line 1 label=button_1\_1
icon=new_action_bar/image1_1.png arg=\<macro\> showMessage(\"You pressed
button 1 line 1\"); \</macro\> \</code\>

## What might come (no commitments)

-   \"update\" operation (like ActionBar_Updater macro)
-   \"delete/blank button\" to wipe a button and make it blank
-   \"create button (wizard)\" could be nice to create a button step by
    step without using an editor

## Change-Log / Download

**![ActionBar_Modifier_v05.ijm](/howto/working/actionbar_modifier_v05.ijm)**\
\* first \"public\" version of macro\
\-\-\--\
Feel free to use and modify it. This macro was written to ease some
processes here and other people may have other needs.

Regards, Rainer
