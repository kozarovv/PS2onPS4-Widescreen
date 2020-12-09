apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=They Came from the Skies (E)(SLES-54803)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00159f90,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x44812000)
eeObj.WriteMem32(0x000c0008,0x4604bdc2)
eeObj.WriteMem32(0x000c000c,0x4614bdc2)
eeObj.WriteMem32(0x000c0010,0x080567e5)
end

emuObj.AddVsyncHook(widescreen)