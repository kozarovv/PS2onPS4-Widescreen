apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kousoku Kidoutai - World Super Police (J)(SLPM-65761)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--00001fe6 2d280002
eeObj.WriteMem32(0x001055b0,0x08030000)

eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x44811800)
eeObj.WriteMem32(0x000c0008,0x4603ffc2)
eeObj.WriteMem32(0x000c000c,0xe61f0000)
eeObj.WriteMem32(0x000c0010,0x0804156d)
end

emuObj.AddVsyncHook(widescreen)