apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov (Characters, Ground, Sky)
eeObj.WriteMem32(0x00154618,0x3c033f40)
eeObj.WriteMem32(0x00154fc4,0x3c033f40)
eeObj.WriteMem32(0x0015502c,0x3c033f40)

--Render fix
--803f023c 6000a427 00c01846
eeObj.WriteMem32(0x001381c0,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)