apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 111 - The Itadaki Raider (J)(SLPS-25703)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002fe630,0x3c013f97)
eeObj.WriteMem32(0x00302a24,0x3c01bec0)
end

emuObj.AddVsyncHook(widescreen)