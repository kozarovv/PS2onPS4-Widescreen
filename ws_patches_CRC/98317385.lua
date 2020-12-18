apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Garfield - Lasangna World Tour (E)(SLES-54817)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001c3a74,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)