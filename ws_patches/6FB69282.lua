apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 and Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0030b8f0,0x3c013f9f)
eeObj.WriteMem32(0x0030b8f4,0x342149f1)

--Font fix
eeObj.WriteMem32(0x002af4f8,0x3c013f2c)
eeObj.WriteMem32(0x002af4fc,0x3421cccd)
end

emuObj.AddVsyncHook(widescreen)