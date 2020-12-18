apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Saru! Get You! 2 [NTSC-J] (SCPS-15025)
--comment=Widescreen hack

eeObj.WriteMem32(0x003D5788,0x0000CD3A)
eeObj.WriteMem32(0x003D5788,0x3F450506)
eeObj.WriteMem32(0x003D5788,0x00009FBB)
eeObj.WriteMem32(0x003D5788,0x3F1460FD)
end

emuObj.AddVsyncHook(widescreen)