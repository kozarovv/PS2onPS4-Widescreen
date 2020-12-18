apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Flintstones in Viva Rock Vegas [PAL] (SLES_502.59)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00139738,0x3C013F40)
eeObj.WriteMem32(0x00139814,0x3C013EC0)
end

emuObj.AddVsyncHook(widescreen)