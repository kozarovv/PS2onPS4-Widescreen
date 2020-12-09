apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x01a3eac0,0x3f248b43)
end

emuObj.AddVsyncHook(widescreen)