apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fireblade [PAL-M5] (SLES_509.95)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0055A430,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)