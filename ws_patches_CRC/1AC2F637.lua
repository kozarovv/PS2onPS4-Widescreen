apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x003821F0,0x3F400000)
eeObj.WriteMem32(0x00382B20,0x412AAAA4)
end

emuObj.AddVsyncHook(widescreen)