apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0019105c,0x08092dd8)
eeObj.WriteMem32(0x0024b760,0x46020842)
eeObj.WriteMem32(0x0024b764,0x3c013f40)
eeObj.WriteMem32(0x0024b768,0x4481f000)
eeObj.WriteMem32(0x0024b76c,0x461e0842)
eeObj.WriteMem32(0x0024b770,0x08064418)
end

emuObj.AddVsyncHook(widescreen)