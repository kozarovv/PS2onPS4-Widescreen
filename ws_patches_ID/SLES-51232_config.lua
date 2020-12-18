apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Virtua Tennis 2 [PAL-M4] (SLES_512.32)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00193848,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)