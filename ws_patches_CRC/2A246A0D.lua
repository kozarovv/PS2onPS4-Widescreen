apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas 

--Gameplay 16:9
eeObj.WriteMem32(0x00306B90,0x44C00000)
end

emuObj.AddVsyncHook(widescreen)