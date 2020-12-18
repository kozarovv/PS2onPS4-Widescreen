apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill Origins (K)(SLKA-25422)
--comment=Widescreen fix by nemesis2000 (NTAC-K by nemesis2000)


--Zoom fix (Internal Widescreen)
eeObj.WriteMem32(0x001da984,0x3c013fe3)
eeObj.WriteMem32(0x001da988,0x34218e39)
end

emuObj.AddVsyncHook(widescreen)