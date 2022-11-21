#!/bin/bash
#the above command tells the OS that we are running a bash script

OUTPUT=$(uname) #this assigns the output of uname to a variable
if [ $OUTPUT != "Linux" ]; then #if statement that checks if the output string is not equal to "linux"
	echo "ERROR" >> linuxsetup.log #appends an error message
	exit 1 #exits script
	
fi

mkdir -p ~/.TRASH
#creating the .TRASH directory if it doesn't already exist

if [ -f ".vimrc" ]; then #checking if the file exists
        mv ~/.vimrc ~/.bup_vimrc #renaming the file
	echo "current .vimrc changed to .bup_vimrc" >> linuxsetup.log #appendingthe change log  
        
fi

cp ./etc/vimrc ~/.vimrc #overwriting the conents of one file to another

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #appending the statement to a file in home directory


