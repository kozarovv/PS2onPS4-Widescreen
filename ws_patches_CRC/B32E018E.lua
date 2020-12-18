apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tokyo Xtreme Racer: Drift 2 (SLUS-21394)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x003f59d0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)