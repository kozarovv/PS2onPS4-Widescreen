apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=International Snooker Championship (E)(SLES-51996)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00157d48,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)