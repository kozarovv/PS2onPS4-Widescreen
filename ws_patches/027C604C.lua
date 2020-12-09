apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen correction by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0012a118,0x3c013f40)
eeObj.WriteMem32(0x0012a11c,0x34210000)
end

emuObj.AddVsyncHook(widescreen)