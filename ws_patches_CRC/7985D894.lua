apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0017f228,0x3c043f71)
eeObj.WriteMem32(0x0017f22c,0x3489d5a2)
eeObj.WriteMem32(0x0017f230,0x3c03bf71)
eeObj.WriteMem32(0x0017f234,0x346ad5a2)
eeObj.WriteMem32(0x001ea9d0,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)