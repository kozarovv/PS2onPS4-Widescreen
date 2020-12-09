apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

--X-Fov
eeObj.WriteMem32(0x00165cac,0x3c01bf2a)
eeObj.WriteMem32(0x00165cb0,0x3421aaab)
eeObj.WriteMem32(0x00165cb4,0x44813000)
eeObj.WriteMem32(0x00165cb8,0x44831800)
end

emuObj.AddVsyncHook(widescreen)