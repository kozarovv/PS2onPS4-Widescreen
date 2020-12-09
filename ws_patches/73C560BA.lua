apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x00180308,0x3c043f71)
eeObj.WriteMem32(0x0018030c,0x3489d5a2)
eeObj.WriteMem32(0x00180310,0x3c03bf71)
eeObj.WriteMem32(0x00180314,0x346ad5a2)
eeObj.WriteMem32(0x001ebed0,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)