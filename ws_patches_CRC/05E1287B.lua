apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--333f023c 33334234 00608244 aa3f023c abaa4234
--6e3f023c e9ee4234 00608244 e33f023c 2a8e4234
eeObj.WriteMem32(0x002329f8,0x3c023f6e)
eeObj.WriteMem32(0x002329fc,0x3442eee9)
eeObj.WriteMem32(0x00232a04,0x3c023fe3)
eeObj.WriteMem32(0x00232a08,0x34428e2a)
eeObj.WriteMem32(0x003dc2b8,0x3c023f6e)
eeObj.WriteMem32(0x003dc2bc,0x3442eee9)
eeObj.WriteMem32(0x003dc2c4,0x3c023fe3)
eeObj.WriteMem32(0x003dc2c8,0x34428e2a)
end

emuObj.AddVsyncHook(widescreen)