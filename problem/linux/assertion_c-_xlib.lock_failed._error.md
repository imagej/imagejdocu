# \"Assertion \`c-\>xlib.lock\' failed.\" error

**In openSUSE 10.3, ImageJ with Java 1.6 can give an \"Assertion
\`c-\>xlib.lock\' failed.\" error that prevents it running.**

Open the file **/etc/profile** in your favourite text editor as the root
user.

Then, add the the following statement just before the end of the file:

    #  
    # Enable lock assertion workaround
    # 
    export LIBXCB_ALLOW_SLOPPY_LOCK=true
