apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MVP Baseball 2004 (K)(SLKA-25148)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x005ba998,0x3c013f40)
eeObj.WriteMem32(0x005baa28,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)