apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Smuggler's Run [PAL-M5] (SLES_500.61)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0023548C,0x3C013FCC)
eeObj.WriteMem32(0x00235490,0x342199CD)
end

emuObj.AddVsyncHook(widescreen)