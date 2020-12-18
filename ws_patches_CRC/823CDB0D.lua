apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00109e08,0x3c013f9f)
eeObj.WriteMem32(0x00109e0c,0x34213fbf)
eeObj.WriteMem32(0x001a6470,0x3c013f9e)
eeObj.WriteMem32(0x001a6474,0x34213fbf)
eeObj.WriteMem32(0x00109da0,0x3c014328)
end

emuObj.AddVsyncHook(widescreen)