# Easily update your ActionBar

Hello everyone,

I came across the need to update an ActionBar in a comfortable way,
since I had several makros which are \"work in progress\". The attached
script can be integrated in your ActionBar and used for this task.

## What it does

-   it looks for all connected makros (ijm-files) which are listed in
    your ActionBar.txt-file
-   if a makro ends with (i.e. \*\_v01.ijm), these files are checked for
    updates
-   if a new version is found (i.e. \*\_v03.ijm) these updates your
    ActionBar
-   after a restart of fiji you\'re up to date

## Usage

-   change the variables in the config block (found top in the makro)
-   you\'re free to use \*.ijm and \*.txt-files in your ActionBar; for
    [example:\<code\>runMacro(\"C:\\\\my_place_for_makros\\\\pretty-nice-stuff_v01.ijm\"](example:%3Ccode%3ErunMacro(%22C:\\my_place_for_makros\\pretty-nice-stuff_v01.ijm%22);)\</code\>

## Change-Log / Download

**![ActionBar_Updater_v03.ijm](/howto/working/actionbar_updater_v03.ijm)**\
\* \*.ijm and \*.txt file-types work for makros

-   added config block at top
    -   **ActBar**: change it to your ActionBar-file
    -   \*\*verbose \*\*: prints to log or not (default: true)
    -   **dialog**: prompts the user if updates were found (default:
        false)
-   uncommented lines are not searched for makros
-   bug fixed: update checker-loop had a bug in its routine

\
**![ActionBar_Updater_v02.ijm](/howto/working/actionbar_updater_v02.ijm)**\
\* first version of makro\
\-\-\--\
I tested it on Win and it should work on other architectures as well.

Feel free to use and modify it on your own risk.

Regards, Rainer
