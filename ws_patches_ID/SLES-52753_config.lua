apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=FlatOut [PAL-M4] (SLES_527.53)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0019E924,0x3C013FAB)
eeObj.WriteMem32(0x00180CC0,0x3C013FAB)
eeObj.WriteMem32(0x002B2F74,0x3EE90000)
end

emuObj.AddVsyncHook(widescreen)