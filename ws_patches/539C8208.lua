apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--42080246 8c0203e6
eeObj.WriteMem32(0x002b6574,0x0815af58)
eeObj.WriteMem32(0x0056bd60,0x46020842)
eeObj.WriteMem32(0x0056bd64,0x3C013F40)
eeObj.WriteMem32(0x0056bd68,0x4481f000)
eeObj.WriteMem32(0x0056bd6c,0x461e0842)
eeObj.WriteMem32(0x0056bd70,0x080ad95e)
end

emuObj.AddVsyncHook(widescreen)