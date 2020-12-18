apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--Widescreen Hack 16:9
eeObj.WriteMem32(0x0041ab2c,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)