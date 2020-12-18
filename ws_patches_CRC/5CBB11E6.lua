apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov 
--803f013c 00188144 ea10c24b
eeObj.WriteMem32(0x002ba940,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)