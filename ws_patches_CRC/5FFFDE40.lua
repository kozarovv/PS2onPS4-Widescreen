apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000 (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0041ab2c,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)