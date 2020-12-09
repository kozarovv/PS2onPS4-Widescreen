apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x002DFBD0,0x3C013FD3)
eeObj.WriteMem32(0x002DFBD4,0x34218E38)
end

emuObj.AddVsyncHook(widescreen)