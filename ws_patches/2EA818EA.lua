apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00264a98,0x080b1714)

eeObj.WriteMem32(0x002c5c50,0x46070202)
eeObj.WriteMem32(0x002c5c54,0x3c013f40)
eeObj.WriteMem32(0x002c5c58,0x4481f000)
eeObj.WriteMem32(0x002c5c5c,0x461e4202)
eeObj.WriteMem32(0x002c5c60,0x080992a7)
end

emuObj.AddVsyncHook(widescreen)