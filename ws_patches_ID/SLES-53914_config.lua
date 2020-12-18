apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Plan [PAL-Spain] (SLES_539.14)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001126B8,0x3C033FAB)
end

emuObj.AddVsyncHook(widescreen)