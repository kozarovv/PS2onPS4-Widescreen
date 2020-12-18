apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Poncotsu Roman Daikatsugeki Bumpy Trot (J)(SLPS-25457)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00132110,0x3c033f40)
eeObj.WriteMem32(0x00131f68,0x3c0643e0)
end

emuObj.AddVsyncHook(widescreen)