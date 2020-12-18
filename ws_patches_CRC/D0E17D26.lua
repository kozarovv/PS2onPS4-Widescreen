apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=R-Type Final (J)(SLPS-25247)
--comment=Widescreen hack NTSC-J by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x0016f060,0x3c033f40)
eeObj.WriteMem32(0x0016fe4c,0x3c043f40)
eeObj.WriteMem32(0x00229f90,0x43d60000)
eeObj.WriteMem32(0x00229fa0,0x43d60000)
end

emuObj.AddVsyncHook(widescreen)