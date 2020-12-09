apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Aquaqua (J)(SLPS-20027)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0018a818,0x080766f8)
eeObj.WriteMem32(0x001d9be0,0x3c013f40)
eeObj.WriteMem32(0x001d9be4,0x4481f000)
eeObj.WriteMem32(0x001d9be8,0xc6010068)
eeObj.WriteMem32(0x001d9bec,0xc602006c)
eeObj.WriteMem32(0x001d9bf0,0x461e0843)
eeObj.WriteMem32(0x001d9bf4,0xe6010068)
eeObj.WriteMem32(0x001d9bf8,0x08062a08)
end

emuObj.AddVsyncHook(widescreen)