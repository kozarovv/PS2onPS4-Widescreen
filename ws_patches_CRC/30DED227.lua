apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0013F114,0x3C0142AC)
eeObj.WriteMem32(0x0021E9EC,0x3C013B36)
eeObj.WriteMem32(0x0021E9F0,0x342103CE)
end

emuObj.AddVsyncHook(widescreen)