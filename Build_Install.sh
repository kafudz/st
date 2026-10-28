# Save all 7 files into one directory: arg.h config.h config.mk st.c st.h win.h x.c

# On Debian/Ubuntu install deps:
sudo apt install build-essential libx11-dev libxft-dev libfontconfig1-dev

# Build
make clean
make

# Install
sudo make install