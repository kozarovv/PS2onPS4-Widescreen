apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Athens 2004 (K)(SCKA-20031)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x0026fd48,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)