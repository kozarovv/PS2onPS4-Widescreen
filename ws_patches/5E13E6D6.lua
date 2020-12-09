apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x002E3574,0x3C013F40)
eeObj.WriteMem32(0x002E3578,0x44810000)
eeObj.WriteMem32(0x002E3580,0x4600C602)
end

emuObj.AddVsyncHook(widescreen)