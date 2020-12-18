apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Super Dragon Ball Z [PAL] (SLES_541.61)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x002B15FC,0x3C023F10)
end

emuObj.AddVsyncHook(widescreen)