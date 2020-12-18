apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nebula - Echo Night (J)(SLPS-25314)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Force turn on Internal Widescreen
--01 00 00 00 00 00 00 3F 01 01 00 00 18 EE 29 00
eeObj.WriteMem32(0x002AD621,byte,00000001

--703f033c 003f023c d7a36334
--eeObj.WriteMem32(0x00143ed0,0x3c033fa0)
eeObj.WriteMem32(0x00143ed4,0x3c023f1f)


end

emuObj.AddVsyncHook(widescreen)