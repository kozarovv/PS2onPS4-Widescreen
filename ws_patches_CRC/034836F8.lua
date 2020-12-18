apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--f043013c 00188144 12004584
eeObj.WriteMem32(0x00258528,0x3c0143b4)
end

emuObj.AddVsyncHook(widescreen)