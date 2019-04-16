#!/bin/bash

VAR='cc'

while [ $VAR != '99-Exit' ]; do
    VAR=$(printf "0-Create\n1-SET\n2-GET\n3-Clone\n99-Exit" | pmenu)

    if [ "$VAR" == '0-Create' ]; then
    echo "name-project"
    read VAR1
    elif [ "$VAR" != '99-Exit' ]; then
    echo "name-project"
    VAR1=$(blih -u florian.antoine@epitech.eu -t "$BLIH_TOKEN" repository list | pmenu)
    fi

    if [ "$VAR" = "0-Create" ]; then
        echo "blih -u florian.antoine@epitech.eu repository create $VAR1"
        blih -u florian.antoine@epitech.eu -t "$BLIH_TOKEN" repository create "$VAR1"
        blih -u florian.antoine@epitech.eu -t "$BLIH_TOKEN" repository setacl "$VAR1" ramassage-tek r
    fi

    if [ "$VAR" = "1-SET" ]; then
        echo "teammate"
        read VAR2
        echo "ACL"
        read VAR3
        echo "blih -u florian.antoine@epitech.eu repository setacl $VAR1 $VAR2@epitech.eu $VAR3"
        blih -u florian.antoine@epitech.eu -t "$BLIH_TOKEN" repository setacl "$VAR1" "$VAR2"@epitech.eu "$VAR3"
    fi

    if [ "$VAR" = "2-GET" ]; then
        echo "blih -u florian.antoine@epitech.eu repository getacl $VAR1"
        blih -u florian.antoine@epitech.eu -t "$BLIH_TOKEN" repository getacl "$VAR1"
    fi

    if [ "$VAR" = "3-Clone" ]; then
        echo "git clone git@git.epitech.eu:/florian.antoine@epitech.eu/$VAR1"
        git clone git@git.epitech.eu:/florian.antoine@epitech.eu/"$VAR1"
    fi

done

