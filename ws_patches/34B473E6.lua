apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02080046 5000a0e7 040040c4
eeObj.WriteMem32(0x00273cbc,0x08068a84)

eeObj.WriteMem32(0x001a2a10,0x46000802)
eeObj.WriteMem32(0x001a2a14,0x3c013faa)
eeObj.WriteMem32(0x001a2a18,0x3421aaab)
eeObj.WriteMem32(0x001a2a1c,0x4481f000)
eeObj.WriteMem32(0x001a2a20,0x461e0002)
eeObj.WriteMem32(0x001a2a24,0x0809cf30)
end

emuObj.AddVsyncHook(widescreen)