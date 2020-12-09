apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9 
eeObj.WriteMem32(0x00263BF0,0x3C013FAB)
eeObj.WriteMem32(0x00348210,0x4399999A)
eeObj.WriteMem32(0x00348218,0x4399999A)
eeObj.WriteMem32(0x00348204,0x4399999A)
end

emuObj.AddVsyncHook(widescreen)