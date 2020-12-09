apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x001809f8,0x3c023fe3)
eeObj.WriteMem32(0x001809fc,0x34428e38)
eeObj.WriteMem32(0x001a8114,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)