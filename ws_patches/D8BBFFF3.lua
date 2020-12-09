apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Top Spin (U)(SLUS-21222)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f033c abaa6334 00688344 50e20a0c
eeObj.WriteMem32(0x00318c40,0x3c033fe3)
eeObj.WriteMem32(0x00318c44,0x34638e2a)
end

emuObj.AddVsyncHook(widescreen)