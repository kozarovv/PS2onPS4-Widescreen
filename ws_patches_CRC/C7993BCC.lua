apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kaido Racer 2 PAL (SLES_539.00)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x003FDFD0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)