# Droplet: Drag and Drop file processor

![](/plugin/utilities/droplet/droplet.jpg)
![](/plugin/utilities/droplet/droplet2.jpg){.align-right}

This plugin shows how a plugin frame can accept drag and drop and
trigger a custom action for each file dropped.

## Authors

Jerome Mutterer (mutterer(at)ibmp.fr) and Wayne Rasband

## Features

-   Drop files on the Droplet frame and they will be processed by the
    selected macro.
-   The choice list shows all macros in the
    `ImageJ/plugins/Droplet Actions/` folder.
-   The \'\...\' edit button opens the selected macro for modifications.
-   Use `file=getArgument();` in the Droplet actions macros to retrieve
    the path of dropped files.

## Installation

Download droplet\_.jar to the plugins folder. Update Menus.

Droplet installs in the Plugins menu.

A `ImageJ/plugins/Droplet Actions/` folder will be created with a sample
action.

## Download

![droplet\_.jar](/plugin/utilities/droplet101/droplet_.jar)

## License

Public Domain

## Changelog

2009/10/21 : 1.0 Initial version

2009/10/25 : 1.01 Works with Linux

## Known Bugs

\-
