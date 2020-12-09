apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x003A1F28,0x3C013F14)
eeObj.WriteMem32(0x002D6650,0x3C014010)
eeObj.WriteMem32(0x00234F18,0x3C013F8A)
end

emuObj.AddVsyncHook(widescreen)