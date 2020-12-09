apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x004EF0DC,0x00000A01)
eeObj.WriteMem32(0x004EF0F0,0x00000A01)
eeObj.WriteMem32(0x0031DB2C,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)