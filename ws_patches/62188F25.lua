apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00224004,0x3C013F40)
eeObj.WriteMem32(0x00224008,0x44810000)
eeObj.WriteMem32(0x00224010,0x4600C602)

--Render fix
eeObj.WriteMem32(0x001ED8DC,0x3C033FAB)
eeObj.WriteMem32(0x001ED9A0,0x3C033FAB)
end

emuObj.AddVsyncHook(widescreen)