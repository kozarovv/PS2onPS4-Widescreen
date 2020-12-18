apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's Tarzan - Untamed (U)(SLUS-20076).
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--a80020c6 003f023c 00088244 
eeObj.WriteMem32(0x0036ca88,0x3c023f21)

--Y-Fov
--43a81446 a00030c6 a40031c6
eeObj.WriteMem32(0x0036cac8,0x08030000)

eeObj.WriteMem32(0x000c0000,0x4614a843)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0842)
eeObj.WriteMem32(0x000c0010,0x080db2b3)
end

emuObj.AddVsyncHook(widescreen)