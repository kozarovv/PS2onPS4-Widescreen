apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

eeObj.WriteMem32(0x001324bc,0x3c013f9d)
eeObj.WriteMem32(0x001324c0,0x44810000)
eeObj.WriteMem32(0x001324c4,0x46006302)
eeObj.WriteMem32(0x001324c8,0x03e00008)
eeObj.WriteMem32(0x001324cc,0xe78c86f8)

eeObj.WriteMem32(0x002485dc,0x0C04C92f)
eeObj.WriteMem32(0x0027579c,0x0C04C932)
eeObj.WriteMem32(0x00275d6c,0x0C04C932)
end

emuObj.AddVsyncHook(widescreen)