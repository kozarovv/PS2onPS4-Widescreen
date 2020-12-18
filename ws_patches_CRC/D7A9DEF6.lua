apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=AFL Live 2003 (E)(SLES-51168)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x0038aac0,0x0810e7c2)
eeObj.WriteMem32(0x00439f08,0x3c013f40)
eeObj.WriteMem32(0x00439f0c,0x4481f000)
eeObj.WriteMem32(0x00439f10,0xc6010068)
eeObj.WriteMem32(0x00439f14,0xc602006c)
eeObj.WriteMem32(0x00439f18,0x461e0843)
eeObj.WriteMem32(0x00439f1c,0xe6010068)
eeObj.WriteMem32(0x00439f20,0x080e2ab2)
end

emuObj.AddVsyncHook(widescreen)