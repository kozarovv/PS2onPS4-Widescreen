apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Siren SCUS_973.55
--comment=Widescreen Hack
eeObj.WriteMem32(0x00201718,0x3c023f40)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x001fb8e8,0x3c027630)
eeObj.WriteMem32(0x001fb934,0x34028970)
end

emuObj.AddVsyncHook(widescreen)