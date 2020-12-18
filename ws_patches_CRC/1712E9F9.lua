apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0011940C,0x3C013F4D)
eeObj.WriteMem32(0x00119410,0x3421B6E0)
end

emuObj.AddVsyncHook(widescreen)