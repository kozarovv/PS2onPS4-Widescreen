apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Widescreen
eeObj.WriteMem32(0x005063C0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)