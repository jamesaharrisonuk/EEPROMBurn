#bin/bash

p=0

if [ $1 != "" ]; then
    file=$1
else
    file=a.out
fi

hexdump -v $file -e '/1 "%02X\n"' | while read byte
do
   echo -n "0x"$byte", "
   (( p++ ))
   if [ $p == 16 ]; then p=0; echo ; fi
   # echo $p
done | tr [:upper:] [:lower:]
echo
