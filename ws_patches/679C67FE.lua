apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

-- Gameplay 16:9
eeObj.WriteMem32(0x00101df4,0x3c023fe3)
eeObj.WriteMem32(0x00101df8,0x3442aa39)

-- Menus
eeObj.WriteMem32(0x001f464c,0x3c023fe3)
eeObj.WriteMem32(0x001f4650,0x3442aa39)
end

emuObj.AddVsyncHook(widescreen)