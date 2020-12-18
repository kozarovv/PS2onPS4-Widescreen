apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cocoto Platform Jumper (E)(SLES-52523)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0010d0f8,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)