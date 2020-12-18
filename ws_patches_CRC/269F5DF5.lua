apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack 
eeObj.WriteMem32(0x002c2bac,0x3c014455)
eeObj.WriteMem32(0x00293364,0x3c014455)
eeObj.WriteMem32(0x00100480,0x3c014455)
eeObj.WriteMem32(0x001012f8,0x3c014455)
eeObj.WriteMem32(0x00103948,0x3c014455)
eeObj.WriteMem32(0x001ebd94,0x3c014455)
eeObj.WriteMem32(0x00293388,0x3c013fa0)
eeObj.WriteMem32(0x0029338c,0x342162f6)
eeObj.WriteMem32(0x00310018,0x3c013faa)
end

emuObj.AddVsyncHook(widescreen)