apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Phantom Brave [NTSC-U] (SLUS_209.55)
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9 
eeObj.WriteMem32(0x00105654,0x3C013F40)
eeObj.WriteMem32(0x00105658,0x44810000)
eeObj.WriteMem32(0x00105660,0x4600C602)
end

emuObj.AddVsyncHook(widescreen)