apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x002e6d50,0x080dea64)
eeObj.WriteMem32(0x0037a990,0x3c013f40)
eeObj.WriteMem32(0x0037a994,0x4481f000)
eeObj.WriteMem32(0x0037a998,0xc6010068)
eeObj.WriteMem32(0x0037a99c,0xc602006c)
eeObj.WriteMem32(0x0037a9a0,0x461e0843)
eeObj.WriteMem32(0x0037a9a4,0xe6010068)
eeObj.WriteMem32(0x0037a9a8,0x080b9b56)
end

emuObj.AddVsyncHook(widescreen)