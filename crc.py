#!/usr/bin/env python
import sys
from struct import unpack

def getCRC(filename):
    with open(filename, "rb") as f:
        crc = 0
        data = f.read(4)
        while data != b"":
            word ,= unpack("I", data)
            crc  ^= word
            data  = f.read(4)
        print ('\nID:  {}-'.format(filename[:4]),'{}'.format(filename[5:8]),'{}'.format(filename[9:]),'\nCRC: {0:X}'.format(crc),'\n\nPlease rename your {0:X}'.format(crc),'.lua file to {}-'.format(filename[:4]),'{}'.format(filename[5:8]),'{}_config.lua'.format(filename[9:]),sep="")

if __name__ == '__main__':
    if not len(sys.argv) == 2:
        print ("Usage: python crc.py ELF_FILE")
    else:
        getCRC(sys.argv[1])        
# Based on script by asahui (https://gist.github.com/asahui/a6af64606a9476a40442274335f5feaf).