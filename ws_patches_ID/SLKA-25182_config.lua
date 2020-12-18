apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hajime no Ippo 2 - Victorious Road (K)(SLKA-25182)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00608244 040001c6
eeObj.WriteMem32(0x001acf78,0x3c023fab)

--Boxer's Road Mode Left Information Window  X-fov
--3f800000 3f800000
eeObj.WriteMem32(0x0083B030,0x3F400000)

--Boxer's Road Mode Center Information Window X-Fov
--3f800000 3f333333
eeObj.WriteMem32(0x0083AAB4,0x3F99999A)
end

emuObj.AddVsyncHook(widescreen)