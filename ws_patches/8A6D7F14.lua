apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Final Fantasy X-2 NTSC-J
--comment=Widescreen hack
eeObj.WriteMem32(0x001a9104,0x3c013f19)
eeObj.WriteMem32(0x001a9108,0x3421999a)
eeObj.WriteMem32(0x0011bdec,0x3c014440)
eeObj.WriteMem32(0x0017a7c4,0x3c01442b)
end

emuObj.AddVsyncHook(widescreen)