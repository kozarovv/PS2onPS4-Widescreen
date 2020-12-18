apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gallop Racer 6 - Revolution (PlayStation 2 the Best)(J)(SLPS-73415)
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001cfe88,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x001d00f0,0x3c0142d0)
end

emuObj.AddVsyncHook(widescreen)