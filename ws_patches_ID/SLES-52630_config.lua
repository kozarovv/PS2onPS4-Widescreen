apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Conflict - Vietnam (E)(SLES-52630)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom fix - Internal Widescreen and 4:3 X-Fov
--aa3f013c 93a92134 00c08144
eeObj.WriteMem32(0x0027affc,0x3c013fe3)
eeObj.WriteMem32(0x0027b000,0x34218cc1)

--Y-Fov fix - Internal Widescreen 
--eeObj.WriteMem32(0x0027b03c,0x3c013f0e)
--eeObj.WriteMem32(0x0027b040,0x342190dd)
end

emuObj.AddVsyncHook(widescreen)