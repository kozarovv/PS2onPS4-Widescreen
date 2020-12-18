apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Conflict - Vietnam (U)(SLUS-21045)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom fix - Internal Widescreen and 4:3 X-Fov
eeObj.WriteMem32(0x003095ec,0x3c013fe3)
eeObj.WriteMem32(0x003095f0,0x34218cc1)

--Y-Fov fix - Internal Widescreen 
--eeObj.WriteMem32(0x0030962c,0x3c013f0e)
--eeObj.WriteMem32(0x00309630,0x342190dd)
end

emuObj.AddVsyncHook(widescreen)