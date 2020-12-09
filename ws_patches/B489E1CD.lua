apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's Treasure Planet (U)(SCUS-97146)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--2044013c 00608144 2d804000
eeObj.WriteMem32(0x00298e28,0x080b1048)
eeObj.WriteMem32(0x002c4120,0x3c014455)
eeObj.WriteMem32(0x002c4124,0x34215555)
eeObj.WriteMem32(0x002c4128,0x44816000)
eeObj.WriteMem32(0x002c412c,0x080a638b)
end

emuObj.AddVsyncHook(widescreen)