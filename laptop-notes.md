# 1. Installing suckless software 
Git clone my repository, and simply cd into each directory and type into the terminal  
	
	sudo make install clean

# 2. Removing Screen tearing in dwm
Add this to /etc/X11/xorg.conf.d/20-intel.conf

	Section "Device"
    	Identifier "Intel Graphics"
    	Driver "intel"
    	Option "TearFree" "true"
	EndSection

# 3. Installing goemon.sh
goemon.sh is a simple shell script that I copied from the Arch wiki for sxiv, it starts sxiv in thumbnail mode, allowing me to browse through my directory easily without command line flags.  

sxiv-thumbnail.desktop makes it easier for your system to make  goemon.sh your default image viewer.  
 
Move goemon.sh to /usr/bin and move sxiv-thumbnail.desktop to /usr/share/applications.  

# 4. DVD playback 
If your laptop has a DVD drive, chances are your distro won't automatically play DVD's due to DRM. To circumvent this, you will need to install libdvdcss.

For Debian systems:  

	sudo apt install libdvdcss  
	
For Fedora:  

	sudo dnf install rpmfusion-free-release-tainted
	
	sudo dnf install libdvdcss 

# 5. Enabling rpmfusion-free repo 
A lot of the software I use isn't in Fedora's default repos due to the quality standards set in place by Red Hat, so we'll have to enable the rpmfusion free repository.  


	sudo dnf install https://download.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm


# 6. Installing dwm/st dependencies on Fedora
These packages that dwm/st depend on aren't included in the base install of Fedora

	libXft-devel
	xinerama
	
# 7. Software used in this desktop environment
	
	cmus 

	sxiv

	st

	dwm

	dmenu

	zsh

	slstatus

	mpv

	lf fm

