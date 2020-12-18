apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jurassic Park - Operation Genesis (U)(SLUS20380)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--abaaaa3e 8988083e (1st)
eeObj.WriteMem32(0x0055b2a0,0x3ff3aaab)

--Y-Fov
--c0ec6e3f 0ad7a33f
eeObj.WriteMem32(0x0055d07c,0x3F9F4880)


end

emuObj.AddVsyncHook(widescreen)