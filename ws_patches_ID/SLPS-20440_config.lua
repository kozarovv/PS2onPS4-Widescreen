apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 88 - The Mini Bijo Keikan (J)(SLPS-20440)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001aab2c,0x3c013f40)
eeObj.WriteMem32(0x001aab30,0x44810000)
eeObj.WriteMem32(0x001aab38,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)