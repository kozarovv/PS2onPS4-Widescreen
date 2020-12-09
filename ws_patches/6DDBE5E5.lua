apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by BloodRaynare

eeObj.WriteMem32(0x0017c760,0x3c013ff3)
eeObj.WriteMem32(0x0017c764,0x3421cf00)
eeObj.WriteMem32(0x0017e6d8,0x3c013ff3)
eeObj.WriteMem32(0x0017e6dc,0x3421cf00)
eeObj.WriteMem32(0x001f78e4,0x3c013ff3)
eeObj.WriteMem32(0x001f78e8,0x3421cf00)
eeObj.WriteMem32(0x001fcb70,0x3c013ff3)
eeObj.WriteMem32(0x001fcb74,0x3421cf00)
eeObj.WriteMem32(0x001fd00c,0x3c013ff3)
eeObj.WriteMem32(0x001fd010,0x3421cf00)
end

emuObj.AddVsyncHook(widescreen)