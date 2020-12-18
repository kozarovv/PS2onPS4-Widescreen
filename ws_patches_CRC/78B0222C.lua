apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

--Y-Fov
--aa3f013c abaa2134 00688144 1c0637e6
--e33f013c 2a8e2134 00688144 1c0637e6
eeObj.WriteMem32(0x00194af8,0x3c013fe3)
eeObj.WriteMem32(0x00194afc,0x34218e2a)

--Zoom
--403f013c 00608144 1806248e
eeObj.WriteMem32(0x00194f88,0x3c013f80)
end

emuObj.AddVsyncHook(widescreen)