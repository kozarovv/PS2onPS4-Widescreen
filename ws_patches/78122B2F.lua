apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00127CD4,0x3C013F24)
eeObj.WriteMem32(0x00157DCC,0x3C013FE3)
eeObj.WriteMem32(0x00157DD0,0x34218E39)
end

emuObj.AddVsyncHook(widescreen)