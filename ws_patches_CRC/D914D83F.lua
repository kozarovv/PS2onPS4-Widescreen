apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hajime no Ippo 2 - Victorious Road (J)(SLPS-25287)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00608244 040001c6
eeObj.WriteMem32(0x001acf78,0x3c023fab)

--Boxer's Road Mode Center Information Window X-Fov
eeObj.WriteMem32(0x0084BD34,0x3F99999A)

--Boxer's Road Mode Left Information Window  X-fov
eeObj.WriteMem32(0x0084C2B0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)