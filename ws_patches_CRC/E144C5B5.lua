apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mega Man X7 (SLES-51885)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0014e524,0x3c0244a8)
end

emuObj.AddVsyncHook(widescreen)