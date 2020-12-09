apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Sergx12

--Gameplay 16:9
eeObj.WriteMem32(0x001A4274,0x3C014455)

--Big heads (by El_Patas) - Try it :)
--eeObj.WriteMem32(0x001D6AA0,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)