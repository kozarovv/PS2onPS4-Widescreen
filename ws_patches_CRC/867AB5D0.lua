apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by nemesis2000
--ported to PAL (ElHecht)
eeObj.WriteMem32(0x0012f71c,0x3c024306)
eeObj.WriteMem32(0x0012f720,0x3442f940)
eeObj.WriteMem32(0x0012f868,0x3c034074)
end

emuObj.AddVsyncHook(widescreen)