apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0047015C,0x241102AA)
end

emuObj.AddVsyncHook(widescreen)