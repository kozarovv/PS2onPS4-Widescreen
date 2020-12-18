apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0018049c,0x3c01bf2a)
eeObj.WriteMem32(0x001804b0,0x3421aaab)
end

emuObj.AddVsyncHook(widescreen)