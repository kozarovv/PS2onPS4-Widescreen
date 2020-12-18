apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Agent Hugo - Lemoon Twist (E)(SLES-54918)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x001b1ac8,0x08096544)
eeObj.WriteMem32(0x00259510,0x46191083)
eeObj.WriteMem32(0x00259514,0x3c013f40)
eeObj.WriteMem32(0x00259518,0x4481f000)
eeObj.WriteMem32(0x0025951c,0x461e1082)
eeObj.WriteMem32(0x00259520,0x0806c6b3)
end

emuObj.AddVsyncHook(widescreen)