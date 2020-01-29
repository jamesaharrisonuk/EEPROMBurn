#!/bin/bash -x

[ "$1"  ] || exit

asmfile=$1
sed -i 's/[a-z]/\U&/g' $asmfile
vasm6502 -wdc02 -dotdir -Fbin $asmfile
