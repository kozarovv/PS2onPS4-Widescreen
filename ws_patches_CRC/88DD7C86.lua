apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00110b24,0x3c034455)
eeObj.WriteMem32(0x0011129c,0x3c0343f0)
eeObj.WriteMem32(0x003a6cc8,0x43f00000)
eeObj.WriteMem32(0x003a66b8,0x43f00000)
end

emuObj.AddVsyncHook(widescreen)