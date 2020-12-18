apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00276208,0x080ab98c)

eeObj.WriteMem32(0x002ae630,0x46014a02)
eeObj.WriteMem32(0x002ae634,0x3c013f40)
eeObj.WriteMem32(0x002ae638,0x4481f000)
eeObj.WriteMem32(0x002ae63c,0x461e4202)
eeObj.WriteMem32(0x002ae640,0x0809d883)
end

emuObj.AddVsyncHook(widescreen)