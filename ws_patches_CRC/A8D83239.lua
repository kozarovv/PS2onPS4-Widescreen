apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill Origins (SLUS-21731)
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001da9b4,0x3c013fe3)
eeObj.WriteMem32(0x001da9b8,0x34218e39)

--black borders's fix (optional)
eeObj.WriteMem32(0x00183548,0x24020000)
end

emuObj.AddVsyncHook(widescreen)