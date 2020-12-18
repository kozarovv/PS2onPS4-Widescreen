apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00111400,0x3C023F40)
end

emuObj.AddVsyncHook(widescreen)