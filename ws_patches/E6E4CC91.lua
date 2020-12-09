apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gigantic Drive (J)(SLPM-62209)
--comment=Widescreen hacks by ElHecht (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001958c4,0x3c033f40)
eeObj.WriteMem32(0x001f3868,0x3c023f40)
eeObj.WriteMem32(0x001fc5a8,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)