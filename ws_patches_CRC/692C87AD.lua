apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x0038972c,0x3fe38e38)
eeObj.WriteMem32(0x00277af0,0x3c023fe3)
eeObj.WriteMem32(0x00277af8,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)