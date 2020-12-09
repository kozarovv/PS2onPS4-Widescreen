apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x001BFBCC,0x3C013EC6)
eeObj.WriteMem32(0x001D9B4C,0x3C013FF3)
end

emuObj.AddVsyncHook(widescreen)