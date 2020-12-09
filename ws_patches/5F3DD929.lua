apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x016c21c0,0x460d6502)
eeObj.WriteMem32(0x016c21bc,0x460d6d42)
end

emuObj.AddVsyncHook(widescreen)