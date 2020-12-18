apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Katamari Damacy (SLUS-21008)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x00168550,0x3c0143d6)

--FMV's fix
eeObj.WriteMem32(0x0027C1A8,0x42600000)
eeObj.WriteMem32(0x0027C1B0,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)