apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--820d0046 003f023c 00008244 (2nd)
eeObj.WriteMem32(0x001ff08c,0x3c023f1e)
end

emuObj.AddVsyncHook(widescreen)