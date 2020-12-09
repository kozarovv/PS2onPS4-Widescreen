apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ben 10 - Protector of Earth SLUS_216.61
--comment=Widescreen Hack
eeObj.WriteMem32(0x0011940C,0x3C013F4d)
eeObj.WriteMem32(0x00119410,0x3421b6e0)
end

emuObj.AddVsyncHook(widescreen)