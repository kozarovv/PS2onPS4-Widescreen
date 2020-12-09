apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack & pnach by El_Patas

--Gameplay
eeObj.WriteMem32(0x006A43B4,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)