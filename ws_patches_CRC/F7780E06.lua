apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kaido Racer PAL (SLES_531.91)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00431190,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)