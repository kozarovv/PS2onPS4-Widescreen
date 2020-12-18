apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=LEGO Batman - The Videogame (U)(SLUS-21785)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0033DE44,0x00000a01)
eeObj.WriteMem32(0x00615710,0x00000a01)
eeObj.WriteMem32(0x0033dd6c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)