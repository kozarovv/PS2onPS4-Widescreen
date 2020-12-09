apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack NTSC-K by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0016ee00,0x3c033f40)
eeObj.WriteMem32(0x0016fbec,0x3c043f40)
eeObj.WriteMem32(0x00229890,0x43d60000)
eeObj.WriteMem32(0x002298a0,0x43d60000)
end

emuObj.AddVsyncHook(widescreen)