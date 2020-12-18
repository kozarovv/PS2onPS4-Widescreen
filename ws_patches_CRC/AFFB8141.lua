apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Skate Attack (E)(SLES-54628)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov 
eeObj.WriteMem32(0x00109f30,0x0804fe60)
eeObj.WriteMem32(0x0013f980,0x3c013f40)
eeObj.WriteMem32(0x0013f984,0x4481f000)
eeObj.WriteMem32(0x0013f988,0xc6010068)
eeObj.WriteMem32(0x0013f98c,0xc602006c)
eeObj.WriteMem32(0x0013f990,0x461e0843)
eeObj.WriteMem32(0x0013f994,0xe6010068)
eeObj.WriteMem32(0x0013f998,0x080427ce)
end

emuObj.AddVsyncHook(widescreen)