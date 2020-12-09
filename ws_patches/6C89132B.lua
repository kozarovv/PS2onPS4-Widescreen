apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x00136f30,0x3c0243d6)
eeObj.WriteMem32(0x00183dc0,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)