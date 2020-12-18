apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Soul Eater - Battle Resonance [NTSC-J] (SLPS-25912)
--comment=Widescreen Hack by Little Giant

-- 16:9
eeObj.WriteMem32(0x004aa348,0x4016DD95)

-- 16:10
--eeObj.WriteMem32(0x004aa348,0x4007C76D)
end

emuObj.AddVsyncHook(widescreen)