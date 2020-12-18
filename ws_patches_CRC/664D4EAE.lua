apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Giant

eeObj.WriteMem32(0x00156be0,0x3c033fe3)
eeObj.WriteMem32(0x00156be8,0x34648e38)

eeObj.WriteMem32(0x001700F4,0x3C023fe3)
eeObj.WriteMem32(0x001700F8,0x34428e38)

eeObj.WriteMem32(0x001702F4,0x3C023fe3)
eeObj.WriteMem32(0x001702F8,0x34428e38)

eeObj.WriteMem32(0x005d0210,0x3c033f2b)
end

emuObj.AddVsyncHook(widescreen)