apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

eeObj.WriteMem32(0x00178b58,0x3c013f40)
eeObj.WriteMem32(0x00178b5c,0x4481f000)
eeObj.WriteMem32(0x00178b98,0x461e0003)
eeObj.WriteMem32(0x00291610,0x461ea502)
eeObj.WriteMem32(0x002b27f4,0x461ea302)
end

emuObj.AddVsyncHook(widescreen)