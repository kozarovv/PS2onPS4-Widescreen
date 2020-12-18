apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 4: Xtreme Legends (SLUS-20812)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x001396c0,0x3c0243d6)
eeObj.WriteMem32(0x0018e0f0,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)