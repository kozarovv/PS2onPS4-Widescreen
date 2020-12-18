apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Medal of Honor: European Assault  (SLUS-21199) / Medal of Honor: European Assault  (SLES-53332)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0012927c,0x00000000)
end

emuObj.AddVsyncHook(widescreen)