apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001431e0,0x3c013f71)
eeObj.WriteMem32(0x001431e4,0x3421d5a2)
end

emuObj.AddVsyncHook(widescreen)