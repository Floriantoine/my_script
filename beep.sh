#!/bin/bash

VAR=88
VARM=600

while [ "$VAR" -lt "$VARM" ]; do
    beep -f $VAR
    let "VAR++"
done