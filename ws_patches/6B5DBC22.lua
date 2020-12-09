apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x01306b1c,0x3c013f40)
eeObj.WriteMem32(0x01306b20,0x44810000)
eeObj.WriteMem32(0x01306b28,0x4600c602)

--Render fix
eeObj.WriteMem32(0x0138e068,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)