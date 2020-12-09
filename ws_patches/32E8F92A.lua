apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht (pnach NTSC-J by Arapapa)

--search values
--00007f43 00008043 000060c3 0e01804b (2nd) 208FB230
--02630046 00000000 00000000 03630146 (2nd. 3rd) 20684FCC, 20684FD0
--02630046 00000000 00000000 04000c46 (2nd, 3rd) 20685018, 2068501C

-- 16:9
eeObj.WriteMem32(0x008FB230,0x43400000)
eeObj.WriteMem32(0x00684FCC,0x3c093c02)
eeObj.WriteMem32(0x00684FD0,0x35293fab)
eeObj.WriteMem32(0x00685018,0x3c0a0028)
eeObj.WriteMem32(0x0068501C,0xad499298)

-- 16:10
--eeObj.WriteMem32(0x008FB230,0x43555555)
--eeObj.WriteMem32(0x00684FCC,0x3c093c02)
--eeObj.WriteMem32(0x00684FD0,0x35293f9a)
--eeObj.WriteMem32(0x00685018,0x3c0a0028)
--eeObj.WriteMem32(0x0068501C,0xad499298)
end

emuObj.AddVsyncHook(widescreen)