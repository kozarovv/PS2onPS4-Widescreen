apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

eeObj.WriteMem32(0x016c1b04,0x460d6d42)
eeObj.WriteMem32(0x016c1b08,0x460d6502)
end

emuObj.AddVsyncHook(widescreen)