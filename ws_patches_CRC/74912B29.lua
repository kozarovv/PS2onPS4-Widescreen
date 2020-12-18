apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x001119F0,0x3C033CAE)
eeObj.WriteMem32(0x001119F4,0x34635555)
eeObj.WriteMem32(0x001119E8,0x3C023FAB)

--Render fix
eeObj.WriteMem32(0x0018A8EC,0x3C03BFAB)
eeObj.WriteMem32(0x0018A8F0,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)