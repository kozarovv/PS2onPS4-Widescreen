apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Ultimate Vol.01 - Love Smash Super Tennis Players (J)(SLPM-62093)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00265700,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)