apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ATV Offroad: All Terrain Vehicle [PAL-M5] (SCES_502.93)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0011F2AC,0x3C023CAC)
eeObj.WriteMem32(0x0011F2C0,0x3C023FAC)
end

emuObj.AddVsyncHook(widescreen)