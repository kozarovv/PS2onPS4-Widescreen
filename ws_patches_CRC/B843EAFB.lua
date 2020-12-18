apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Midway Arcade Treasures 3
--comment=Widescreen Hack
eeObj.WriteMem32(0x001E3E54,0x3C023F40)
end

emuObj.AddVsyncHook(widescreen)