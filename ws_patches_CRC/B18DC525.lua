apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Harry Potter and the Goblet of Fire [PAL-M5] (SLES_537.28)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0029FD74,0x3C013FE3)
eeObj.WriteMem32(0x0029FD78,0x34218E39)
end

emuObj.AddVsyncHook(widescreen)