apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Star Wars: Racer Revenge [NTSC-U] (SLUS_202.68)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0013BCA0,0x3C023F40)
eeObj.WriteMem32(0x001153B4,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)