apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00147038,0x3c0243d6)
eeObj.WriteMem32(0x001b12d8,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)