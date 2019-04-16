#!/bin/bash

echo "name alias"
read VAR1
echo "Fichier script"
VAR2=$(find ~/script/ -iname "*" | pmenu)
if [ $1 ]
then
    echo "alias '$VAR1'='. $VAR2'" >> ~/.zshrc
else
    echo "alias '$VAR1'='$VAR2'" >> ~/.zshrc
fi
source ~/.zshrc
