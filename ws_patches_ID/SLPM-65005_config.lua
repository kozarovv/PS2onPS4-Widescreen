apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Orega Kantoku da (NTSC-J)(SLPM-65005)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002b1674,0x3c013f40)
eeObj.WriteMem32(0x002b1678,0x44810000)
eeObj.WriteMem32(0x002b1680,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)