apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Sims - Bustin' Out (NTSC-K)(SLKA-25137)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--aa3f013c abaa2134 00008144 0800e003 00000000 00000000 0800e003
eeObj.WriteMem32(0x00293058,0x3c013fe3)
eeObj.WriteMem32(0x0029305c,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)