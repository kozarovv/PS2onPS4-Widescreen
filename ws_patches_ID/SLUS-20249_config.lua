apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core 2 Another Age SLUS_202.49
--comment=Widescreen Hack
eeObj.WriteMem32(0x001c7ce8,0x3c013f40)
eeObj.WriteMem32(0x001dcb4c,0x3c013f40)
eeObj.WriteMem32(0x001dcc6c,0x3c013f40)
eeObj.WriteMem32(0x002FBF80,0x43f00000)
end

emuObj.AddVsyncHook(widescreen)