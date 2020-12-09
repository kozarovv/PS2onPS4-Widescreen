apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Terminator - Dawn of Fate (U)(SLUS-20391)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--2d202002 06bb0046 (3rd)
eeObj.WriteMem32(0x00179a74,0x08030000)
eeObj.WriteMem32(0x000c0000,0x4600bb06)
eeObj.WriteMem32(0x000c0004,0x3c013f52)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e6303)
eeObj.WriteMem32(0x000c0010,0x0805e69e)
end

emuObj.AddVsyncHook(widescreen)