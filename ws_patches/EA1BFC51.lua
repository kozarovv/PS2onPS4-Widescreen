apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Medal of Honor: Vanguard  (	SLUS-21597) / Medal of Honor: Vanguard  (SLES-54683)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001308b4,0x00000000)
end

emuObj.AddVsyncHook(widescreen)