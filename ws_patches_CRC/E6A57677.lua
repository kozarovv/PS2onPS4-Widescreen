apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's Treasure Planet (E)(SCES-51177)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--2044013c 00608144 2d804000
eeObj.WriteMem32(0x00298e90,0x080b1068)
eeObj.WriteMem32(0x002c41a0,0x3c014455)
eeObj.WriteMem32(0x002c41a4,0x34215555)
eeObj.WriteMem32(0x002c41a8,0x44816000)
eeObj.WriteMem32(0x002c41ac,0x080a63a5)
end

emuObj.AddVsyncHook(widescreen)