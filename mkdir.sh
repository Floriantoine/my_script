#!/bin/bash

if [ $1 ]; then
    ndir="$1"
else
    echo "Enter directory name"
    read ndir
fi
if [ -d "$ndir" ]; then
    echo "Directory exist"
else
    mkdir $ndir
    echo "Directory created"
fi
