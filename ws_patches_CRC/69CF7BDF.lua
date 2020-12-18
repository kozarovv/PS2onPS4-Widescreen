apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x003a9c2c,0x3c02bf40)

--Background effect fix
eeObj.WriteMem32(0x001a6fac,0x3c033f2b)
eeObj.WriteMem32(0x001a7018,0x3c033f2b)
end

emuObj.AddVsyncHook(widescreen)