apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Roland Garros 2005 - Powered by Smash Court Tennis (E)(SCES-53310)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002b346c,0x3c013f40)
eeObj.WriteMem32(0x002b3470,0x44810000)
eeObj.WriteMem32(0x002b3478,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)