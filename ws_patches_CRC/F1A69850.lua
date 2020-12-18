apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tak 2: The Staff of Dreams [PAL] (SLES_530.36)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x005CF4EC,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)