apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00204738,0x3c013fab)
eeObj.WriteMem32(0x002f29b4,0x4399999a)
eeObj.WriteMem32(0x002f29bc,0x4399999a)
eeObj.WriteMem32(0x002f29a8,0x4399999a)
end

emuObj.AddVsyncHook(widescreen)