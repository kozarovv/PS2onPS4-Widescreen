apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bratz: Forever Diamondz [PAL-M3] (SLES_543.43)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0031F5D8,0x3C013F1E)
eeObj.WriteMem32(0x00300934,0x3C013ED3)

--Render fix
eeObj.WriteMem32(0x00300848,0x3C013F2B)
end

emuObj.AddVsyncHook(widescreen)