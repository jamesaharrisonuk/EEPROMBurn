#!/usr/bin/env python
#
# Please see this video for details:
# https://www.youtube.com/watch?v=yl8vPW5hydQ
#

import sys,os
from array import array

asmfile = sys.argv[1]
size = os.path.getsize(asmfile)
print ("Using file: " + str(asmfile) + " Size: " + str(size) + " bytes")

data = bytearray()
with open(asmfile, 'rb') as f:
   data = f.read()

rom = data + bytearray([0x00] * (32768 - len(data)))

print ("ROM size: " + str(len(rom)) + " bytes")

rom[0x7ffc] = 0x00
rom[0x7ffd] = 0x80

with open("rom.bin", "wb") as out_file:
  out_file.write(rom)
