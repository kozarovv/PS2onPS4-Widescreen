apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x001a72e0,0x08097aa8)
eeObj.WriteMem32(0x0025eaa0,0x3c013f40)
eeObj.WriteMem32(0x0025eaa4,0x4481f000)
eeObj.WriteMem32(0x0025eaa8,0xc6010068)
eeObj.WriteMem32(0x0025eaac,0xc602006c)
eeObj.WriteMem32(0x0025eab0,0x461e0843)
eeObj.WriteMem32(0x0025eab4,0xe6010068)
eeObj.WriteMem32(0x0025eab8,0x08069cba)
end

emuObj.AddVsyncHook(widescreen)