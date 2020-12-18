apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Portal Runner NTSC-U (SLUS-20003) Widescreen Hack by VIRGIN KLM

--P1 Screen
eeObj.WriteMem32(0x0030ADD0,0x3FA1C40E)

--P2 Screen
eeObj.WriteMem32(0x0030B000,0x3FA1C40E)
end

emuObj.AddVsyncHook(widescreen)