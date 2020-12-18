apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0030b0f0,0x42500000)
eeObj.WriteMem32(0x002fdab0,0x42500000)

--Y-Fov
--000060430000a043
eeObj.WriteMem32(0x0034DA7C,0x43955553)

--------------------------------------------------------
--Status fix 
--eeObj.WriteMem32(0x00da0cb4,0x43950000)

--Menu Zoom
--eeObj.WriteMem32(0x00288484,0x3c023e00)

--game menu move
--eeObj.WriteMem32(0x0030b270,0x43fddddd)
end

emuObj.AddVsyncHook(widescreen)