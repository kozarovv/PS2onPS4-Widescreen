apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02080046 5000a0e7 040040c4
eeObj.WriteMem32(0x002789c0,0x08069cb4)

eeObj.WriteMem32(0x001a72d0,0x46000802)
eeObj.WriteMem32(0x001a72d4,0x3c013faa)
eeObj.WriteMem32(0x001a72d8,0x3421aaab)
eeObj.WriteMem32(0x001a72dc,0x4481f000)
eeObj.WriteMem32(0x001a72e0,0x461e0002)
eeObj.WriteMem32(0x001a72e4,0x0809e271)
end

emuObj.AddVsyncHook(widescreen)