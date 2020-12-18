apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by No.47 (original codes) and Aced14 (leftover ELF hacks and car select additions)

--16:9 widescreen
eeObj.WriteMem32(0x0030F990,0x43610000)
eeObj.WriteMem32(0x0030F9E0,0x42E10000)
eeObj.WriteMem32(0x0030FA94,0x43A8C000)
eeObj.WriteMem32(0x00310340,0x43960000)
eeObj.WriteMem32(0x003105D8,0x43960000)
eeObj.WriteMem32(0x00310718,0x43960000)
eeObj.WriteMem32(0x00133EA4,0x000000B9)
eeObj.WriteMem32(0x00133E7C,0x0000013A)
eeObj.WriteMem32(0x00133E98,0x00000089)
eeObj.WriteMem32(0x00133EAC,0x00000167)
eeObj.WriteMem32(0x00310878,0x43834000)
eeObj.WriteMem32(0x00304BD8,0x3FAAAAAB)
eeObj.WriteMem32(0x0030F90C,0x00000000)
end

emuObj.AddVsyncHook(widescreen)