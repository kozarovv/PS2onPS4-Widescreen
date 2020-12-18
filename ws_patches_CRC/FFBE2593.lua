apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Konjiki no Gashbell!! Gekitou! Saikyou no Mamonotachi [NTSC-J] (SLPS-25440)
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x00228604,0x3c013f40)
eeObj.WriteMem32(0x00228608,0x44810000)
eeObj.WriteMem32(0x00228610,0x4600c602)
eeObj.WriteMem32(0x001DB608,0x3C014220)
end

emuObj.AddVsyncHook(widescreen)