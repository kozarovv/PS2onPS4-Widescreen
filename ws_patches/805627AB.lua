apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001DCB54,0x3C023F40)
eeObj.WriteMem32(0x001DC63C,0x3C023EC1)
end

emuObj.AddVsyncHook(widescreen)