apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x001A1D24,0x3C013F10)
eeObj.WriteMem32(0x00198154,0x3C013F22)
end

emuObj.AddVsyncHook(widescreen)