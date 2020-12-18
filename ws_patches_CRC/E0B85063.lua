apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gekibo 2 - Toku Dane Ookoku Nippon (J)(SLPS-20091)
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0017b3cc,0x3c013f40)
eeObj.WriteMem32(0x0017b3d0,0x44810000)
eeObj.WriteMem32(0x0017b3d8,0x4600c602)

--Rende fix
eeObj.WriteMem32(0x0011814c,0x3c01428C)
eeObj.WriteMem32(0x00118264,0x3c014340)
end

emuObj.AddVsyncHook(widescreen)