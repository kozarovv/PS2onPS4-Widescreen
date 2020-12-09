apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--03000146 a00040e4
eeObj.WriteMem32(0x001d14e0,0x08085a34)

eeObj.WriteMem32(0x002168d0,0x46010003)
eeObj.WriteMem32(0x002168d4,0x3c013f40)
eeObj.WriteMem32(0x002168d8,0x4481f000)
eeObj.WriteMem32(0x002168dc,0x461e0002)
eeObj.WriteMem32(0x002168e0,0x08074539)
end

emuObj.AddVsyncHook(widescreen)