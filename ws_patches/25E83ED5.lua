apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9   
eeObj.WriteMem32(0x00437230,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)