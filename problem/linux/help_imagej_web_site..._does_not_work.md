# Help ImageJ Web Site\... does not work

In ImageJ versions previous to 1.38k under linux, the **Help\>ImageJ Web
Site** and **Help\>Online Docs\...** commands run the Netscape browser
to open the ImageJ website.\
If Netscape is not installed, these commands do not work. One can solve
this by providing a symbolic link to the command that launches the
installed browser. For example:\

    ln -s /usr/bin/firefox /usr/local/bin/netscape

or\

    ln -s /opt/kde3/bin/konqueror /usr/local/bin/netscape\\

Version 1.38k resolves this issue and is able to launch one of the
following browsers if installed (in this order): netscape, firefox,
konqueror, mozilla, opera, epiphany or lynx.

If you have a preference for a particular browser, you can use the trick
of making a symbolic link to \"netscape\" as outlined above.
