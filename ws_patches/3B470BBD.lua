apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00183124,0x3C023F24)
eeObj.WriteMem32(0x00183128,0x34428B44)
end

emuObj.AddVsyncHook(widescreen)