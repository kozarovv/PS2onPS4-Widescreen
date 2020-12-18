apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tom Clancy's Rainbow Six 3 (SLUS-20883)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0030f100,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)