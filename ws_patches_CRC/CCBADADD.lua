apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Akira Psycho Ball [PAL] (SLES_509.19)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001428BC,0x3C013F40)
eeObj.WriteMem32(0x001428C0,0x44810000)
eeObj.WriteMem32(0x001428C8,0x4600C602)
end

emuObj.AddVsyncHook(widescreen)