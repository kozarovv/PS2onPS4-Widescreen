apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 5: Xtreme Legends (SLUS-21299)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x00146d7c,0x3c0243d6)
eeObj.WriteMem32(0x0019814c,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)