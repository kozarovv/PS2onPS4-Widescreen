apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Virtua Pro Football (E)(SLES-54153)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f013c abaa2134 00188144 0000bfff
eeObj.WriteMem32(0x0035371c,0x3c013fe3)
eeObj.WriteMem32(0x00353720,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)