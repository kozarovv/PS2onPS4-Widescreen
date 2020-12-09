apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

eeObj.WriteMem32(0x0017a210,0x3c013ff3)
eeObj.WriteMem32(0x0017c1a8,0x3c013ff3)
eeObj.WriteMem32(0x001f3714,0x3c013ff3)
eeObj.WriteMem32(0x001f8148,0x3c013ff3)
eeObj.WriteMem32(0x001f8600,0x3c013ff3)

eeObj.WriteMem32(0x0017a214,0x3421cf00)
eeObj.WriteMem32(0x0017c1ac,0x3421cf00)
eeObj.WriteMem32(0x0017c1cc,0x3421cf00)
eeObj.WriteMem32(0x0017c220,0x3421cf00)
eeObj.WriteMem32(0x001f3718,0x3421cf00)
eeObj.WriteMem32(0x001f3738,0x3421cf00)
eeObj.WriteMem32(0x001f3758,0x3421cf00)
eeObj.WriteMem32(0x001f814c,0x3421cf00)
eeObj.WriteMem32(0x001f8604,0x3421cf00)

eeObj.WriteMem32(0x0017c1c8,0x3c013f73)
eeObj.WriteMem32(0x001f3734,0x3c013f73)
end

emuObj.AddVsyncHook(widescreen)