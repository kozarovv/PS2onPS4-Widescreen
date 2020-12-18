apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9 
eeObj.WriteMem32(0x00108B1C,0x3C013F40)
eeObj.WriteMem32(0x00108B20,0x44810000)
eeObj.WriteMem32(0x00108B28,0x4600C602)
eeObj.WriteMem32(0x004FA520,0x45700000)

--2D Characters fix
eeObj.WriteMem32(0x00137588,0x3c023fc0)
eeObj.WriteMem32(0x0013759c,0x3c023fc0)
eeObj.WriteMem32(0x001375b0,0x3c043fc0)
eeObj.WriteMem32(0x001375c4,0x3c033fc0)
end

emuObj.AddVsyncHook(widescreen)