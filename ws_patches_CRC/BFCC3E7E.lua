apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shinobi (SLUS-20459)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x00234a50,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)