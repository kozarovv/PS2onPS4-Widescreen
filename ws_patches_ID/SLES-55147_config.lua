apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill Origins (SLES-55147)
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001da9ec,0x3c013fe3)
eeObj.WriteMem32(0x001da9f0,0x34218e39)
end

emuObj.AddVsyncHook(widescreen)