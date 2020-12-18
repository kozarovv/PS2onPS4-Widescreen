apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cocoto Fishing Master (U)(SLUS-21663)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0049580c,0x3c023f40)

--Y-Fov
eeObj.WriteMem32(0x00469c6c,0x3c03bf2a)

--HUD fix 
eeObj.WriteMem32(0x0046a168,0x3c023fc0)

end

emuObj.AddVsyncHook(widescreen)