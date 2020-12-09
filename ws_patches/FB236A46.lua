apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sonic Unleashed (SLUS-21846)
--comment=Widescreen Patch (16:9) by Monsterjamp

--FOV
eeObj.WriteMem32(0x00872CD0,0x3FD21DAF)

--Fixes video aspect ratio
eeObj.WriteMem32(0x00ED1A68,0x43E00000)
eeObj.WriteMem32(0x00ED1A58,0x00000000)
end

emuObj.AddVsyncHook(widescreen)