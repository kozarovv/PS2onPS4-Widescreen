apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by BloodRaynare

eeObj.WriteMem32(0x001130bc,0x3c013f9d)
eeObj.WriteMem32(0x001130c0,0x44810000)
eeObj.WriteMem32(0x001130c4,0x46006302)
eeObj.WriteMem32(0x001130c8,0x03e00008)
eeObj.WriteMem32(0x001130cc,0xe78c9a90)
eeObj.WriteMem32(0x0021dd04,0x0c044c2f)
eeObj.WriteMem32(0x00242c94,0x0c044c32)
end

emuObj.AddVsyncHook(widescreen)