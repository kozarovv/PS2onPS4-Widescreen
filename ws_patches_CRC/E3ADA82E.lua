apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spy Hunter (SLUS-20056)
--comment=Widescreen Patch (16:9) by Monsterjamp

--FOV
eeObj.WriteMem32(0x00393FD0,0x3F400000)

--Prevents objects from disappearing from sides of screen
eeObj.WriteMem32(0x0196FE00,0x3F0CCCCD)
eeObj.WriteMem32(0x0196FDE0,0xBF0CCCCD)
end

emuObj.AddVsyncHook(widescreen)