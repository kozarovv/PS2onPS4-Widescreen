apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Turok - Evolution (E)(SLES-50479)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 7000a427 00088244
eeObj.WriteMem32(0x00325c28,0x3c023f40)

--Render fix
--003f023c 00108244 00088044
eeObj.WriteMem32(0x0023570c,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)