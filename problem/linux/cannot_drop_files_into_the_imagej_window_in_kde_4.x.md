# Cannot drop files into the ImageJ window in KDE 4.x

The new KDE 4.x window manager has changed the way the Desktop is
managed. A widget called **folder-view** shows the contents of the
\~/Desktop folder on the physical desktop (i.e. on screen). However this
prevents *drag and dropping* files in the ImageJ window. The problem is
that the string pointing to the file is not the directory name itself,
but handled as a kio slave called **desktop:** (note the colon).

The solution to this is to change the settings of the folder-view
widget:

1.  Right click on the folder-view
2.  Select \"Folder View Settings\"
3.  Select \"Show a custom folder\"
4.  Navigate to the location of your Desktop folder (i.e.
    /home/user_name/Desktop )

You now can drag and drop files from the Desktop shown on the screen.
