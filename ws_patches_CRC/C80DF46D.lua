apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Battle of Yuu Yuu Hakusho,Shitou! Ankoku Bujutsukai! 120% [NTSC-J] (SLPS-25734)
--comment=Widescreen
eeObj.WriteMem32(0x00103a84,0x3c013f40)
eeObj.WriteMem32(0x00103a88,0x44810000)
eeObj.WriteMem32(0x00103a90,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)