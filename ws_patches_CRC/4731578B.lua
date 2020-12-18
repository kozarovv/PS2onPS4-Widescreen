apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9 
eeObj.WriteMem32(0x005FBC84,0x3FE505E3)
eeObj.WriteMem32(0x004A8ADC,0x3C013F83)
end

emuObj.AddVsyncHook(widescreen)