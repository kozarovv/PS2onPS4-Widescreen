apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas (NTSC-J by Arapapa)

--Widescreen hack 16:9

--eeObj.WriteMem32(0x00281d2c,0x3c013f40)
--eeObj.WriteMem32(0x00281d30,0x44810000)
--eeObj.WriteMem32(0x00281d38,0x4600c602)

eeObj.WriteMem32(0x00219540,0x3C013F40)
eeObj.WriteMem32(0x002180ec,0x3c014fff)

end

emuObj.AddVsyncHook(widescreen)