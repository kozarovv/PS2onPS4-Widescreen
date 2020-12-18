apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--6666663f c021643f
eeObj.WriteMem32(0x004d2a14,0x3F2CCCCD)
eeObj.WriteMem32(0x004d21bc,0x3F2CCCCD)
end

emuObj.AddVsyncHook(widescreen)