#!/bin/bash

VAR=$(find ~/ -warn -type d -iname "*$1*" -not -path "/home/ab/.CLion*" -not -path "*.*" -not -path "*resources*" 2> /dev/null | pmenu)

echo $VAR

cd $VAR
