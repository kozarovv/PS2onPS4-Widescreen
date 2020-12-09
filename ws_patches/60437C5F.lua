apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00138e90,0x3c023fe3)
eeObj.WriteMem32(0x00138e94,0x34428e39)
eeObj.WriteMem32(0x0012b094,0x3c073f40)
end

emuObj.AddVsyncHook(widescreen)