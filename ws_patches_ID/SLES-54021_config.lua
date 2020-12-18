apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ruff Trigger: The Vanocore Conspiracy [PAL-M5] (SLES_540.21)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0018AA90,0x3C013FE9)
end

emuObj.AddVsyncHook(widescreen)