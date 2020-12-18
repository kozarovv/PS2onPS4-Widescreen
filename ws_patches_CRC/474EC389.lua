apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9 
eeObj.WriteMem32(0x00108994,0x3C013F40)
eeObj.WriteMem32(0x00108998,0x44810000)
eeObj.WriteMem32(0x001089A0,0x4600C602)

--2D Characters fix
eeObj.WriteMem32(0x00136728,0x3c033fc0)
eeObj.WriteMem32(0x0013673c,0x3c023fc0)
eeObj.WriteMem32(0x00136750,0x3c023fc0)
eeObj.WriteMem32(0x00136764,0x3c063fc0)
end

emuObj.AddVsyncHook(widescreen)