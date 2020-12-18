apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sidewinder Max [NTSC-J] (SLPS_250.18)
--comment=Widescreen Hack by El_Patas 

--Gameplay 16:9
eeObj.WriteMem32(0x00123860,0x3C0143C0)
eeObj.WriteMem32(0x00102858,0x3C0143B4)
end

emuObj.AddVsyncHook(widescreen)