apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pryzm: Chapter One: The Dark Unicorn [PAL-M4] (SLES_507.21)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001186E8,0x3C013F22)
eeObj.WriteMem32(0x0017E834,0x3C013F10)
eeObj.WriteMem32(0x003341DC,0x3C01BEC0)
end

emuObj.AddVsyncHook(widescreen)