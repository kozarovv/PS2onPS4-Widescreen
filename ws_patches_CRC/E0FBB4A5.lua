apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Scooby-Doo! Night of 100 Frights (E)(SLES-51017)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--680001c6 6c0002c6
eeObj.WriteMem32(0x001e6d68,0x080a06f4)

eeObj.WriteMem32(0x00281bd0,0x3c013f40)
eeObj.WriteMem32(0x00281bd4,0x4481f000)
eeObj.WriteMem32(0x00281bd8,0xc6010068)
eeObj.WriteMem32(0x00281bdc,0xc602006c)
eeObj.WriteMem32(0x00281be0,0x461e0843)
eeObj.WriteMem32(0x00281be4,0xe6010068)
eeObj.WriteMem32(0x00281be8,0x08079b5c)
end

emuObj.AddVsyncHook(widescreen)