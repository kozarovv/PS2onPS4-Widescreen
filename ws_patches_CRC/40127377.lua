apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001583AC,0x3C013F40)
eeObj.WriteMem32(0x00158434,0x3C0143D6)
eeObj.WriteMem32(0x001A9F58,0x3C013F40)
eeObj.WriteMem32(0x001A9F70,0x3C0143D6)
--eeObj.WriteMem32(0x001A9F90,0x3C014495)
end

emuObj.AddVsyncHook(widescreen)