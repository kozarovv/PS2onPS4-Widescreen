apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f013c abaa2134 00608144
eeObj.WriteMem32(0x00108ab4,0x3c013fe3)
eeObj.WriteMem32(0x00108ab8,0x34218e22)

--eeObj.WriteMem32(0x00108ad4,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)