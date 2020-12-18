apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Conflict Delta II - Wangan Sensou 1991 (J)(SLPM-66000)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom fix - Internal Widescreen and 4:3 X-Fov
--aa3f013c 93a92134 00b08144
eeObj.WriteMem32(0x0030f698,0x3c013fe3)
eeObj.WriteMem32(0x0030f69c,0x34218cc1)

--Y-Fov fix - Internal Widescreen 
eeObj.WriteMem32(0x0030f6d8,0x3c013f0e)
eeObj.WriteMem32(0x0030f6dc,0x342190dd)
end

emuObj.AddVsyncHook(widescreen)