#!/bin/bash

if [ -z $1 ]; then
   romfile=rom.out
else
   romfile=$1
fi

echo "EEPROM read to file " $romfile

minipro -p AT28C256 -r $romfile
