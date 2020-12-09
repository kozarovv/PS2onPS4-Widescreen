apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x001a6b70,0x0806fdb4)
eeObj.WriteMem32(0x001bf6d0,0x3c013f40)
eeObj.WriteMem32(0x001bf6d4,0x4481f000)
eeObj.WriteMem32(0x001bf6d8,0xc6010068)
eeObj.WriteMem32(0x001bf6dc,0xc602006c)
eeObj.WriteMem32(0x001bf6e0,0x461e0843)
eeObj.WriteMem32(0x001bf6e4,0xe6010068)
eeObj.WriteMem32(0x001bf6e8,0x08069ade)
end

emuObj.AddVsyncHook(widescreen)