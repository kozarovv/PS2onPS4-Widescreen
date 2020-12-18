apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= King of Fighters - Maximum Impact - Maniax (J)(SLPS-25636)
--comment= Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0057efa4,0x3fe38e38)
eeObj.WriteMem32(0x005a53d0,0x400ccccd)
end

emuObj.AddVsyncHook(widescreen)