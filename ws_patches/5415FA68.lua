apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00199214,0x3C013CAD)
eeObj.WriteMem32(0x001B2114,0x3C013C6E)
end

emuObj.AddVsyncHook(widescreen)