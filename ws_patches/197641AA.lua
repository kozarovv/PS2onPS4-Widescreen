apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001FF744,0x3C023F1C)
eeObj.WriteMem32(0x001FF770,0x3C023F10)

--Hang fix by Prafull (Only needed for pcsx2, is not needed for the PS2)
--eeObj.WriteMem32(0x0010EC20,0x00000000)
end

emuObj.AddVsyncHook(widescreen)