apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--a043013c 00688144 c6c30046
eeObj.WriteMem32(0x0018fe04,0x3c014370)

--Render fix
--f03f013c 00b08144
eeObj.WriteMem32(0x0018fe48,0x3c014020)
end

emuObj.AddVsyncHook(widescreen)