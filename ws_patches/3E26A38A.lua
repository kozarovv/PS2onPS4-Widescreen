apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

--Y-Fov
--aa3f013c abaa2134 00688144 700014e6
--e33f013c 2a8e2134 00688144 700014e6
eeObj.WriteMem32(0x0011789c,0x3c013fe3)
eeObj.WriteMem32(0x001178a0,0x34218e2a)

--Zoom
--803f013c 00108144 1000a0c7
eeObj.WriteMem32(0x0011854c,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)