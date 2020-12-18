apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0017e23c,0x3c0140ab)
eeObj.WriteMem32(0x0017e25c,0x3c014399)
eeObj.WriteMem32(0x0017e260,0x3421999a)
eeObj.WriteMem32(0x0019ea18,0x3c013fee)
eeObj.WriteMem32(0x00168750,0x3c014200)
end

emuObj.AddVsyncHook(widescreen)