apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gallop Racer Inbreed (J)(SLPS-25701)
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00023f80,0x0012ba00)
eeObj.WriteMem32(0x0012ba00,0x3c013f40)
eeObj.WriteMem32(0x0012bbd8,0x3c0142d0)

eeObj.WriteMem32(0x00033f80,0x00134478)
eeObj.WriteMem32(0x00134478,0x3c013f40)
eeObj.WriteMem32(0x00134b08,0x3c013f40)
eeObj.WriteMem32(0x001348a0,0x3c0142d0)
end

emuObj.AddVsyncHook(widescreen)