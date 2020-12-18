apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00187158,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0x46150502)
eeObj.WriteMem32(0x000c000c,0x461ea503)
eeObj.WriteMem32(0x000c0010,0x08061c57)
end

emuObj.AddVsyncHook(widescreen)