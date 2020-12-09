apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Monster Rancher 4 (NTSC-U) - Widescreen Hack (16:9)
eeObj.WriteMem32(0x004EDB2C,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)