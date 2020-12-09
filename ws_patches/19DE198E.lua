apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--8988083c 010d50b9 1def3836 2b32d7b2
eeObj.WriteMem32(0x00472ca0,0x3d300000)

--Render fix
--0040013c 00088144 2001a2fb
eeObj.WriteMem32(0x001c0cc4,0x3c013f00)
end

emuObj.AddVsyncHook(widescreen)