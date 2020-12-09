apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00119550,0x3C033CAE)
eeObj.WriteMem32(0x00119554,0x34635555)
eeObj.WriteMem32(0x00119548,0x3C023FAB)

--Render fix
eeObj.WriteMem32(0x001DE9C4,0x3C03BFAB)
eeObj.WriteMem32(0x001DE9C8,0x3C023FAB)

--Better match for 2 player mode
--eeObj.WriteMem32(0x00119550,0x3C033CB0)
--eeObj.WriteMem32(0x00119554,0x34635555)
--eeObj.WriteMem32(0x00119548,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)