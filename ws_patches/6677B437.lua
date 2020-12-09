apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x00146c48,0x3c0243d6)
eeObj.WriteMem32(0x00181cec,0x3c023f2b)
eeObj.WriteMem32(0x00146994,0x3c023e40)
end

emuObj.AddVsyncHook(widescreen)