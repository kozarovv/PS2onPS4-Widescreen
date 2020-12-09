apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Force turn on Internal Widescreen
--01 00 00 00 00 00 00 3F
eeObj.WriteMem32(0x002ADC01,byte,00000001

--703f033c 003f023c d7a36334
--eeObj.WriteMem32(0x00143d10,0x3c033fa0)
eeObj.WriteMem32(0x00143d14,0x3c023f1f)
end

emuObj.AddVsyncHook(widescreen)