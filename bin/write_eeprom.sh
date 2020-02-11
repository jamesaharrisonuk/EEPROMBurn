#!/bin/bash

[ -z $1 ] && exit

romfile=$1

minipro -p AT28C256 -w $romfile
