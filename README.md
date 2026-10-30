st - simple terminal
--------------------
st is a simple terminal emulator for X which sucks less.


Requirements
------------
In order to build st you need the Xlib header files.


Installation
------------
Edit config.mk to match your local setup (st is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install st (if
necessary as root):

    make clean install


Running st
----------
If you did not install st with make clean install, you must compile
the st terminfo entry with the following command:

    tic -sx st.info

See the man page for additional details.

Credits
-------
Based on Aurélien APTEL <aurelien dot aptel at gmail dot com> bt source code.

My personal fork of [st](https://st.suckless.org/), the simple terminal for X11.

Based on the suckless `st` and kept for **my own use**.  
Everything not listed below is upstream code; the notes here are mine.

## Personal use

This repo is for **my own setup**.  
It is not a general-purpose project, and I don’t guarantee it will work on your machine.  
Feel free to read/copy it, but expect to edit the source (especially `config.h`) for your own system.

## What’s different

- Personal fork of upstream st.
- `config.h` may be tweaked for my setup (fonts, colors, patches).
- See the [commit history](https://github.com/kafudz/st/commits/master) for exact changes 
