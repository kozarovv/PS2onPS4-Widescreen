apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

eeObj.WriteMem32(0x0024b57c,0x00000000)
end

emuObj.AddVsyncHook(widescreen)