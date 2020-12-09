apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001A75CC,0x3C013CBB)
eeObj.WriteMem32(0x001A75D0,0x3421821D)
eeObj.WriteMem32(0x001A7678,0x3C013FE3)
eeObj.WriteMem32(0x001A767C,0x3421AE39)
end

emuObj.AddVsyncHook(widescreen)