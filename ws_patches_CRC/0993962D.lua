apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
--credit goes to nemesis2000
eeObj.WriteMem32(0x0011d2ac,0x3c01442b)
eeObj.WriteMem32(0x0011d2d0,0x3c01442b)
eeObj.WriteMem32(0x0011d2ec,0x3c0143ab)
eeObj.WriteMem32(0x0017453c,0x3c013f40)
eeObj.WriteMem32(0x00174540,0x44810000)
eeObj.WriteMem32(0x00174548,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)