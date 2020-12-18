apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x00103c3c,0x3c013f40)
eeObj.WriteMem32(0x00103c40,0x44810000)
eeObj.WriteMem32(0x00103c48,0x4600c602)

--Render fix
--003f023c 00088244 9801013c
eeObj.WriteMem32(0x00134fe4,0x3c023f30)

------------------------/
--X-fov
--803f023c 00688244 0045023c
--eeObj.WriteMem32(0x00129c84,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)