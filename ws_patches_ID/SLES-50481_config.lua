apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Vexx [PAL-M5] (SLES_504.81)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0035D87C,0x3C033F40)
end

emuObj.AddVsyncHook(widescreen)