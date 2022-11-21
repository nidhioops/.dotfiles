#!/bin/bash
#This is the shebang, which will allow us to code in bash
rm -rf ~/.vimrc  #deletes the directory and all files contained in it 

sed -i 's/source ~\/\.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc 
#The above command will search for the line "source ∼/.dotfiles/bashrc custom" from the .bashrc file and replace it with an empty string

rm -rf ~/.TRASH
#this will delete the directory and its contents

