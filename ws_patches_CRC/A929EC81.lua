apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Backyard Baseball '09 (U)(SLUS-21751)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--8041023c 00008244 00000000
eeObj.WriteMem32(0x00132e80,0x3c024140)

--Y-Fov
--eeObj.WriteMem32(0x00132ec4,0x3c023fee)
--eeObj.WriteMem32(0x00132ecc,0x3442eee9)
end

emuObj.AddVsyncHook(widescreen)