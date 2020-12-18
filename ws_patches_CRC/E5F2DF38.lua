apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Midnight Club II (U)(SLUS-20209)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f013c a8aa2134
eeObj.WriteMem32(0x0036c884,0x3c013fe3)
eeObj.WriteMem32(0x0036c888,0x34218e38)
end

emuObj.AddVsyncHook(widescreen)