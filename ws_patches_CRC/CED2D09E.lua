apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metal Gear Solid 2 - Sons of Liberty [Shareholder Edition] (J)(SLPM-68503)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0011f090,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)