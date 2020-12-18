apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (Converted to PAL by Somechump)

--sp
eeObj.WriteMem32(0x003a89c4,0x3c023f40)
eeObj.WriteMem32(0x003a89e4,0x3c0243d6)

--mp
eeObj.WriteMem32(0x003a8ae4,0x3c023f40)
eeObj.WriteMem32(0x003a8b04,0x3c0243d6)

--menu
eeObj.WriteMem32(0x0053ba44,0x3c023f0c)
eeObj.WriteMem32(0x0053ba54,0x3c0243d6)
end

emuObj.AddVsyncHook(widescreen)