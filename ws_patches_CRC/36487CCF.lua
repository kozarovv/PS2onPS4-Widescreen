apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack ver.2 by synce
eeObj.WriteMem32(0x009542C0,0x3F400000)
eeObj.WriteMem32(0x009542D0,0x442B0000)
eeObj.WriteMem32(0x009542D8,0x44008000)
eeObj.WriteMem32(0x009542F8,0x442B0000)
end

emuObj.AddVsyncHook(widescreen)