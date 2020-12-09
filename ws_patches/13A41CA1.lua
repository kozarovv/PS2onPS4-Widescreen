apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x006c29d4,0x3fe38e38)
eeObj.WriteMem32(0x00769b40,0x400ccccd)
end

emuObj.AddVsyncHook(widescreen)