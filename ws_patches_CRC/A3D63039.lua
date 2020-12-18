apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Xenosaga Episode I
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x0093c0f0,0x3f400000)
eeObj.WriteMem32(0x0093c6e0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)