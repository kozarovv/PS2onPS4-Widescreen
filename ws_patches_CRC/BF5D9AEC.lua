apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gungrave [NTSC-U]
--comment=Widescreen Hack

eeObj.WriteMem32(0x001bec1c,0x3c013f40)
eeObj.WriteMem32(0x001bec20,0x44810000)
eeObj.WriteMem32(0x001bec28,0x4600c602)
eeObj.WriteMem32(0x00143504,0x2402010e)
end

emuObj.AddVsyncHook(widescreen)