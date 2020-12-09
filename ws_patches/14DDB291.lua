apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001ac344,0x0809b8c0)

eeObj.WriteMem32(0x0026e304,0x3c013f40)
eeObj.WriteMem32(0x0026e308,0x4481f000)
eeObj.WriteMem32(0x0026e30c,0x461ed682)
eeObj.WriteMem32(0x0026e310,0xe61a0264)
eeObj.WriteMem32(0x0026e314,0x0806b0d2)
end

emuObj.AddVsyncHook(widescreen)