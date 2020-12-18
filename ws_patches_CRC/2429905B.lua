apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9    
eeObj.WriteMem32(0x002B8304,0x3C01BF27)
eeObj.WriteMem32(0x002C1458,0x3C013F20)
end

emuObj.AddVsyncHook(widescreen)