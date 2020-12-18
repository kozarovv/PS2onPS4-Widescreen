apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sega Soccer Slam (E)(SLES-51125)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00232064,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)