apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Boboboubo Boubobo - Hajike Matsuri (J)(SLPM-65262)
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

eeObj.WriteMem32(0x001059c4,0x3c013f40)
eeObj.WriteMem32(0x001059c8,0x44810000)
eeObj.WriteMem32(0x001059d0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)