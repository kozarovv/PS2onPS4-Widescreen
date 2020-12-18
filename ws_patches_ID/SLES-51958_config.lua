apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Whiplash [PAL] (SLES_519.58)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x002C3B40,0x3C013FE3)
eeObj.WriteMem32(0x002C3B44,0x34219FA5)
end

emuObj.AddVsyncHook(widescreen)