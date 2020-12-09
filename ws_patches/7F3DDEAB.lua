apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen 16:9 Hack by Acem

eeObj.WriteMem32(0x01CAFC90,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)