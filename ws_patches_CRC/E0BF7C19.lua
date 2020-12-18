apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Katamari Damacy 2 (K) (SCKA_200.51)
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

eeObj.WriteMem32(0x001082f0,0x3c0143d6)
end

emuObj.AddVsyncHook(widescreen)