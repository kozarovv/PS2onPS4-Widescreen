apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x003106c0,0x080d18d0)
eeObj.WriteMem32(0x003106c4,0x00000000)
eeObj.WriteMem32(0x00346340,0x3c013f40)
eeObj.WriteMem32(0x00346344,0x4481f000)
eeObj.WriteMem32(0x00346348,0xc6010068)
eeObj.WriteMem32(0x0034634c,0xc602006c)
eeObj.WriteMem32(0x00346350,0x461e0843)
eeObj.WriteMem32(0x00346354,0xe6010068)
eeObj.WriteMem32(0x00346358,0x080c41b2)
end

emuObj.AddVsyncHook(widescreen)