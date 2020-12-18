apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 73 - The Saiyuki Saruden (J)(SLPM-62588)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001be4e4,0x3c013f40)
eeObj.WriteMem32(0x001be4e8,0x44810000)
eeObj.WriteMem32(0x001be4f0,0x4600c602)

--Render Fix
eeObj.WriteMem32(0x00140128,0x3c01bf30)
eeObj.WriteMem32(0x0014011c,0x3c013f30)
end

emuObj.AddVsyncHook(widescreen)