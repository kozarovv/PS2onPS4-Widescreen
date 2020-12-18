apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 (ELF hack)
eeObj.WriteMem32(0x00104DE4,0x3C013F40)
eeObj.WriteMem32(0x00104DE8,0x44810000)
eeObj.WriteMem32(0x00104DF0,0x4600C602)

--2D Characters X-Fov
--803f023c 00608244 00688044 (1st)
eeObj.WriteMem32(0x001488ac,0x3c023f40)

--(Old previous Memory hack by JLB)
--eeObj.WriteMem32(0x00332070,0x45700000)
end

emuObj.AddVsyncHook(widescreen)