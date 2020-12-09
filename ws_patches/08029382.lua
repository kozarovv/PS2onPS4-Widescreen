apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x002A2428,0x3C013F1C)
eeObj.WriteMem32(0x001124E4,0x3C013ED6)
end

emuObj.AddVsyncHook(widescreen)