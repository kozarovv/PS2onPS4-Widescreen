apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sniper Elite [PAL-M5] (SLES-51820)
--comment=Widescreen hack by Arapapa (Ported to PAL by El_Patas)

--Zoom
eeObj.WriteMem32(0x005015d0,0x3f9faaab)

--Y-FOV
eeObj.WriteMem32(0x00502848,0x3fe38e2a)
end

emuObj.AddVsyncHook(widescreen)