apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00088144 60654224
eeObj.WriteMem32(0x003202dc,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)