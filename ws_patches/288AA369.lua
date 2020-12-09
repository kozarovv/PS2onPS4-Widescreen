apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0027e754,0x3c014340)
eeObj.WriteMem32(0x0027e758,0x44810000)
end

emuObj.AddVsyncHook(widescreen)