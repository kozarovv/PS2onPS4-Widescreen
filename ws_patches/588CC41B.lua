apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x0012dd1c,0x3c024307)
eeObj.WriteMem32(0x0012de68,0x3c034074)
end

emuObj.AddVsyncHook(widescreen)