# My Dotfiles
In this directory, I have set up a Makefile with the targets linuxc and clean. The linux target has a prerequisite on the clean target and will run the linux.sh script in the bin directory. The clean target will run the cleanup.sh script in the bin directory. 

The linux.sh script will first check that the OS is Linux, and create a .TRASH directory in the home directory. It will rename the .vimrc file and copy the contents of the etc/vimrc file to .vimrc in the home directory. Finally,it will make sure that the modifications to bashrc are noted as being sourced from ~/.dotfiles/etc/bashrccustom in the ~/.bashrc file. 

The cleanup.sh script will basically undo what linux.sh did by first deleting the .vimrc file in the home directory and removing the addition to the .bashrc file. Then, it will remove the .TRASH directory from the home directory.

## .vimrc
.vimrc will contain instructions for modifying the settings for how vim will appear and customizes vim for the user. It will set the synntax, line numbers, autoindent, ruler, color and also set the widths for different functions of different keys.  

## .bashrc
.bashrc will contain cumstom aliases and functions for the user as alternates to writing out longer commands. It has aliases for commands that include cd, ls, rm, mv, ssh and tar. 
It will also create two functions to tar a directory, called targzfunc, and another one to untar a directory, called untarfunc.   `

