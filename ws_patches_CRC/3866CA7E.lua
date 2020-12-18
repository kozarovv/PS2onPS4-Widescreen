apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen 16:9 and 16:10 (NTSC-K) hack by 99skull

--Widescreen Hack (16:9)

--eeObj.WriteMem32(0x00316180,0x3F19999A)
eeObj.WriteMem32(0x001A59B4,0x3C013F19)
eeObj.WriteMem32(0x001A59B8,0x3421999A)
eeObj.WriteMem32(0x0011973C,0x3C014440)
eeObj.WriteMem32(0x00176194,0x3C01442B)

--Widescreen Hack (16:10)
--eeObj.WriteMem32(0x00316180,0x3F19999A)
--eeObj.WriteMem32(0x001A59B4,0x3C013F2A)
--eeObj.WriteMem32(0x001A59B8,0x3421AAAB)
--eeObj.WriteMem32(0x0011973C,0x3C014440)
--eeObj.WriteMem32(0x00176194,0x3C01442B)

--world map
--803f013c 00008144 01001124
eeObj.WriteMem32(0x002631b8,0x3c013f40)

--sphere grid
--803f013c 00a08144 e601023c
eeObj.WriteMem32(0x00264b14,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)