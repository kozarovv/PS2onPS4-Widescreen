apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0021e3f0,0x080452b4)

eeObj.WriteMem32(0x00114ad0,0x46022882)
eeObj.WriteMem32(0x00114ad4,0x3c013f40)
eeObj.WriteMem32(0x00114ad8,0x4481f000)
eeObj.WriteMem32(0x00114adc,0x461e1082)
eeObj.WriteMem32(0x00114ae0,0x080878fd)
end

emuObj.AddVsyncHook(widescreen)