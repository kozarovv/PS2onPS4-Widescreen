apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0025e168,0x3c023f2a)

--------------------------------------------/

--Zoom (Need to adjust Menu size and hud size)
--eeObj.WriteMem32(0x0013cbd8,0x3c043f40)
--Zoom (cannot run boot. Need to adjust Menu size and hud size)
--eeObj.WriteMem32(0x0025e380,0x3c023f40)
--X-Fov(Need to adjust Menu size and hud size)
--eeObj.WriteMem32(0x0025e270,0x3c023fab)
--Y-Fov
--eeObj.WriteMem32(0x005142bc,0x3fc24925)
--Y-Fov
--eeObj.WriteMem32(0x0025e120,0x3c023ec0)
end

emuObj.AddVsyncHook(widescreen)