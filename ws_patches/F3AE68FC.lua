apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Incredibles: Rise of the Underminer [PAL-M3] (SLES_534.74)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00218F24,0x3C023F1C)
eeObj.WriteMem32(0x00218F50,0x3C023F10)

--Hang fix by Prafull (Only needed for pcsx2, is not needed for the PS2)
--eeObj.WriteMem32(0x001110E0,0x00000000)
end

emuObj.AddVsyncHook(widescreen)